class StudentsController < ApplicationController
	def new
		@dojo = Dojo.find(params[:id])
	end

	def create
	  	Student.create(student_info)
		@dojo = Dojo.find(params[:id])

	  	redirect_to 'dojos/:id'
  	end

  	def show
  		@student = Student.find(params[:id])
  		@dojo = Dojo.find(params[:id])
  		@students = @dojo.students.where.not(id: Student.find(params[:id]))
  	end

  	def edit
  		@dojos = Dojo.all
  		@student = Student.fine(params[:id])
  	end

  	def update
  		student = Student.find(params[:id])
  		student.update(student_info)
  	end

  	def destroy
  		@student = Student.find(params[:id])
  		@student.destroy
  	end

  	private 
  	def student_info
  		params.require(:student_info).permit(:first_name, :last_name, :email, :dojo)
  	end
end
