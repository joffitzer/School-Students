class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    @students = Student.all
    @students_in_school = @school.students
  end

  def new
    @school = School.new
  end

  def create 
    school = School.new(school_params)
    if school.valid? 
      school.save
      redirect_to school_path(school)
    else 
      flash[:message] = "Name must be unique."
      redirect_to new_school_path
    end 
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    school = School.find(params[:id])
    school.update(school_params)
    redirect_to school_path(school)
  end

  def delete
    school = School.find(params[:id])
    school.destroy
    redirect_to schools_path
  end

  private

  def school_params
    params.require(:school).permit(:name, :address)
  end 

end
