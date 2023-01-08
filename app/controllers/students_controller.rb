class StudentsController < ApplicationController

  # def index
  #   students = Student.all
  #   render json: students
  # end

  # query params to return a list of all students whose first or last name match the query parameter
  def index
    students = if params[:name]
                  Student.by_name(params[:name])
              else
                  Student.all
              end
      render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
