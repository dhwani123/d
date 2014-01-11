class RteachController < ApplicationController
  def new
  @rteach = Rteach.new
  end

  def create
  @rteach = Rteach.new(params[:rteach])
			if @rteach.save
				flash[:success] = "welcome TEACHER"
				redirect_to @rteach
			else
				@title = "Sign up"
				render 'new'
			end
  end
  end

  def show
  @rteach = Rteach.find(params[:id])
	@title = @rteach.firstname
  end

