class Hospitals::SessionsController < Devise::SessionsController
  def show
    @hospital = Hospital.find(params[:id])
  end
end
