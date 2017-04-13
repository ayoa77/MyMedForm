class Hospitals::RegistrationsController < Devise::RegistrationsController
  def show
    @hospital = Hospital.find(params[:id])
  end
end
