class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students

    student = Student.find_by(last_name: params[:name])
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
