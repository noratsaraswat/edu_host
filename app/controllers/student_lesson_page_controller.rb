class StudentLessonPageController < ApplicationController
  def index
  @studentlesson=StudentLesson.find(:all)
  end
  def find
    @lessonclass=LessonClass.find(:first,:conditions=>{:unique_classid=>"#{params[:code]}"} )
    if @lessonclass
    #flash[:notice]="Lesson #{@teacherlesson.lesson.lessonName} Added to #{@teacherlesson.user.name}'s list "
    @instructer=User.find(:first,:conditions=>{:id=>"#{@lessonclass.teacherid}"})
    redirect_to(:action =>"result",:lessonname=>"#{@lessonclass.lesson.lessonName}",:classname=>"#{@lessonclass.class_detail.classname}",:instructer=>"#{@instructer.name}",:lessonid=>"#{@lessonclass.lesson.id}")
    else
      flash[:notice]="#{params[:code]} is not a valied code"
      redirect_to(:action =>"index")
    end
  end

  def result
    @studentlesson=StudentLesson.find(:all)
    @lesson_name=params[:lessonname]
    @class_name=params[:classname]
    @instructer=params[:instructer]
    @lessonid=params[:lessonid]
  end
  def add
  @studentlesson=StudentLesson.new
  @studentlesson.user_id=current_user.id
  @studentlesson.lesson_id=params[:lessonid]
  @studentlesson.finished=0
  if @studentlesson.save
      #flash[:notice]="Class #{@lessonclass.class_detail.classname} Added to lesson #{@lessonclass.lesson.lessonName} Unique code is #{params[:code]}"
      redirect_to(:action =>"index")
     return
  else
    flash[:notice]="This lesson already added"
    redirect_to(:action =>"index")
  end
 end
  def remove
    @studentlesson=StudentLesson.find(params[:id])
    #flash[:notice]="Lesson #{@lessonclass.lesson.lessonName} removed from class #{@lessonclass.class_detail.classname}"
    @studentlesson.destroy
     redirect_to(:action =>"index")
  end
  def lesson
    @lessonclass=LessonClass.find(:first,:conditions=>{:lesson_id=>"#{params[:lessonid]}"} )
    @studentlesson=StudentLesson.find(:first,:conditions=>{:lesson_id=>"#{params[:lessonid]}",:user_id=>"#{current_user.id}"} )
    @current=@studentlesson.finished
    @lessonclasslessonid=@lessonclass.lesson_id
    @lesson_name=@lessonclass.lesson.lessonName
    @classname=@lessonclass.class_detail.classname
    @classcode=@lessonclass.unique_classid
    @instructer=User.find(:first,:conditions=>{:id=>"#{@lessonclass.teacherid}"})
    @instructername=@instructer.name
    @lessonpages=LessonPage.find(:all,:conditions=>{:lesson_id=>"#{params[:lessonid]}"})
    @count=@lessonpages.size
    @questCount=0
    @lessonpages.each do | lesspage|
      if lesspage.questionnaire_id
        @questCount=@questCount+1
      end
    end
  end
  def teacherlesson
    @lessonclass=LessonClass.find(:first,:conditions=>{:lesson_id=>"#{params[:lessonid]}"} )
    @lessonclasslessonid=@lessonclass.lesson_id
    @lesson_name=@lessonclass.lesson.lessonName
    @classname=@lessonclass.class_detail.classname
    @classcode=@lessonclass.unique_classid
    @instructer=User.find(:first,:conditions=>{:id=>"#{@lessonclass.teacherid}"})
    @instructername=@instructer.name
    @lessonpages=LessonPage.find(:all,:conditions=>{:lesson_id=>"#{params[:lessonid]}"})
    @count=@lessonpages.size
    @questCount=0
    @lessonpages.each do | lesspage|
      if lesspage.questionnaire_id
        @questCount=@questCount+1
      end
    end
  end
  def nextlesson
    @lesson_id=params[:lessonid]
    @count=params[:count]
    @pass=params[:pass]
    if @pass
    @current=params[:current]
    @val= Integer(@current)
    @val2= Integer(@count)
    if @val<@val2
      @val=@val+1
    end
    @current=@val.to_s
    @studentlesson = StudentLesson.find(:first,:conditions=>{:lesson_id=>"#{@lesson_id}",:user_id=>"#{current_user.id}"})
    if @studentlesson
      @studentlesson.finished=@current
      @studentlesson.save
    end
    redirect_to(:action=>"lesson",:lessonid=>"#{@lesson_id}")
    else
    redirect_to(:action=>"teacherlesson",:lessonid=>"#{@lesson_id}")
    end
   end
   def prevlesson
     @lesson_id=params[:lessonid]
     if @pass
     @current=params[:current]
     @val= Integer(@current)
    if @val>0
      @val=@val-1
    end
    @current=@val.to_s
    @studentlesson = StudentLesson.find(:first,:conditions=>{:lesson_id=>"#{@lesson_id}",:user_id=>"#{current_user.id}"})
    if @studentlesson
      @studentlesson.finished=@current
      @studentlesson.save
    end
     redirect_to(:action=>"lesson",:lessonid=>"#{@lesson_id}")
     else
     redirect_to(:action=>"teacherlesson",:lessonid=>"#{@lesson_id}")
     end
   end
end