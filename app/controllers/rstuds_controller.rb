class RstudsController < ApplicationController
  def new
  @rstud = Rstud.new
  end 
  
  def show
  @rstud = Rstud.find(params[:id])
	@title = @rstud.firstname
  end 
  
  def create
  @rstud = Rstud.new(params[:rstud])
			if @rstud.save
				flash[:success] = "welcome STUDENT"
				redirect_to @rstud
			else
				@title = "Sign up"
				render 'new'
			end
  end

end
