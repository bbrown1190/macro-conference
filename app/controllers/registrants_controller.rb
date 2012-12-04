class RegistrantsController < ApplicationController

  def new
    @registrant = Registrant.new
  end

  def index
    @registrants = Registrant.paginate(page: params[:page])
  end

  def show
    @Registrant = Registrant.find(params[:id])
    @Registrants = @Registrant.microposts.paginate(page: params[:page])
  end

  def create
    @registrant = Registrant.new(params[:registrant])
    if @registrant.save
      p "========== it shoulda saved"
      # Handle a successful save.
      redirect_to root_path
    else
      p "++++++++++++ something went wrong here"
      render 'new'
    end
  end
end
