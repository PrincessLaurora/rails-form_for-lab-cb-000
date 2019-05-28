class SchoolClassesController < ApplicationController

  def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
	  @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
	  redirect_to student_path(@student)
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(params.require(:student).permit(:first_name, :last_name))
	  redirect_to student_path(@student)
	end

end
