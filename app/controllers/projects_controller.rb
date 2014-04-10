class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    if Project.create(params[:project])
      flash[:notice] = "Project Created"
      redirect_to projects_path
    else
      flash[:alert] = "Project not created"
      render action: "new"
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project updated"
      redirect_to projects_path
    else
      flash[:alert] = "Project not updated"
      render action: "new"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    flash[:notice] = "Project deleted"
    redirect_to projects_path
  end

end
