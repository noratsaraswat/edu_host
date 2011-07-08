class LessonsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /lessons
  # GET /lessons.xml
  def index
    @lessons = Lesson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.xml
  def show
    #@lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.xml
  def new
    #@lesson = Lesson.new
    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    #@lesson = Lesson.find(params[:id])
    
  end

  # POST /lessons
  # POST /lessons.xml
  def create
    #@lesson = Lesson.new(params[:lesson])

    @adminpeoplelessons =AdminPeopleLessons.new
    @admin=AdminPerson.new
    
    
   

    respond_to do |format|
      if @lesson.save
         @admin.lessonID=@lesson.id
         @admin.userID=current_user.id
         @admin.save
         @adminpeoplelessons.lesson_id=@lesson.id
         @adminpeoplelessons.admin_person_id=@admin.id
         @adminpeoplelessons.save
        #format.html { render :action => "new" }
        format.html { redirect_to(@lesson, :notice => 'Lesson was successfully created.') }
        format.xml  { render :xml => @lesson, :status => :created, :location => @lesson }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.xml
  def update
    #@lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to(@lesson, :notice => 'Lesson was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.xml
  def destroy
    #@lesson = Lesson.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to(lessons_url) }
      format.xml  { head :ok }
    end
  end
end
