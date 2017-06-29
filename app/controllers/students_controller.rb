class StudentsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @students = batch.students
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = batch.students.build
  end

  def create
    @student = batch.students.build(student_params)

    if @student.save
      redirect_to @student, notice: "Student created"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "Student updated"
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params
      .require(:student)
      .permit(
        :full_name, :photo, :last_evaluation
      )
  end
end