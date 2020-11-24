class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
  case
  when @student.active==true
    # @student.active=(false)
    @student.update(active: false)
  when @student.active==false
    # @student.active=(true)
    @student.update(active: true)
  else 
    "error"
  end
  # redirect_to "/students/#{@student.id}"
  redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end