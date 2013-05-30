class WorksController < ApplicationController
  def index
  	@works = Work.all
    @style = params[:style]
  end

  def show
  	@work = Work.find(params[:id])
    @first_work = Work.first
    @last_work  = Work.last
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

  def edit 
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(params[:work])
      redirect_to @work
    else
      render 'edit'
    end
  end
end
