class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destory]
	def index
	@projects = Project.all.order("created_at desc")
	end

def new 
	@project = Project.new
end

def create
	@project = Project.new 

	if @project.save
		redirect_to @project, notice: "Nice Karthik! That project was successfully saved!"
	else
		render 'new'
	end
end

def show
	end

private

def find_project
	@project = Project.find(params[:id])
end

def project_params
	params.require(:project).permit(:title, :description, :link)
	end

end