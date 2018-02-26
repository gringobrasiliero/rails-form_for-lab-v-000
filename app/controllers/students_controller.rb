class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
      @student = Student.find(params[:id])
    end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

def update
@student = Student.find(params[:id])
@student.update(params.require(:student).permit(:first_name, :last_name))
end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end


end
