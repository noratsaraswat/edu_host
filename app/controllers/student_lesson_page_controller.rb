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
  if @studentlesson.save
      #flash[:notice]="Class #{@lessonclass.class_detail.classname} Added to lesson #{@lessonclass.lesson.lessonName} Unique code is #{params[:code]}"
      redirect_to(:action =>"index")
     return
  end
 end

  def remove
    @studentlesson=StudentLesson.find(params[:id])
    #flash[:notice]="Lesson #{@lessonclass.lesson.lessonName} removed from class #{@lessonclass.class_detail.classname}"
    @studentlesson.destroy
     redirect_to(:action =>"index")
  end
end
