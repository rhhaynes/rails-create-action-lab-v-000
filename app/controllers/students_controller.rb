class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  
  def new
  end

  def create
    student = Student.new(:first_name => params["first_name"], :last_name =>  params["last_name"])
    redirect_to student_path(student) if !!student.save
  end

  def show
    @student = Student.find_by(:id => params["id"])
  end

end
