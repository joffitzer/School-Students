class StudentsController < ApplicationController

  def index
    @students = Student.all 
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @schools = School.all
  end

  def create 
    student = Student.new(student_params)
    if student.valid? 
      student.save
      redirect_to student_path(student)
    else 
      flash[:message] = "Name must be unique and you must select a school."
      redirect_to new_student_path
    end 
  end 

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end 

  def delete
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end 

end
