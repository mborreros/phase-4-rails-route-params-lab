class StudentsController < ApplicationController

  def index
    if params.has_key?(:name)
      #find record by name
      found_student = Student.where(last_name: params[:name].capitalize)
      render json: found_student
    else 
    students = Student.all
    render json: students
    end
  end

  def show
    this_student = Student.find(params[:id])
    render json: this_student
  end

end
