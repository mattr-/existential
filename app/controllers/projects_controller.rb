class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @project = Project.new(params[:project])
    respond_to do |format|
      if @project.save
        format.html { redirect_to(@project, :notice => "Project created.") }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
