class WorksController < ApplicationController
  def index
  	@works = Work.all
  end

  def show
  	@work = Work.find(params[:id])
  end

  def new
  	@work = Work.new
  end

  def create
  	@work = Work.new(params[:work])
  	if @work.save
  		redirect_to @work
  	else
  		render 'new'
  	end
  end
end
