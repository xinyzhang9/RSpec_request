class NinjasController < ApplicationController
  def index
  	@ninja = Ninja.new
  end

  def create
  	@ninja = Ninja.new(params.require(:ninja).permit(:name,:description))
  	if @ninja.save
  		flash[:notice] = 'Ninja successfully created'
  		redirect_to action: 'success'
  	else
  		flash[:notice] = 'Sorry,failed to submit form. Please refer to the required infomation.'
  		flash[:error] = @ninja.errors.full_messages
  		redirect_to action: 'new'
  	
  	end

  end

  def new
  	@ninja = Ninja.new
  end

  def success
  end
end
