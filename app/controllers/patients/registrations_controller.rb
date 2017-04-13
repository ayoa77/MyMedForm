class Patients::RegistrationsController < Devise::RegistrationsController
def new
@patient = Patient.new

end

  def show
    @patient = Patient.find(params[:id])
    @medforms = Medform.where(user_id: @patient.id)
  end
end
