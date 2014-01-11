class RprinController < ApplicationController

  def new
  @rprin = Rprin.new
  end

  def create
  @rprin = Rprin.new(params[:rprin])
			if @rprin.save
				flash[:success] = "welcome PRINCIPAL"
				redirect_to @rprin
			else
				@title = "Sign up"
				render 'new'
			end
  end
  end

  def show
  @title = @rprin.firstname
  end

end
