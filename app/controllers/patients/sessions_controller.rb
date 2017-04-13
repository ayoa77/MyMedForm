class Patients::SessionsController < Devise::SessionsController
def new
render 'patients/sessions/new'
end

  def show
    @patient = Patient.find(params[:id])
    @medforms = Medform.where(user_id: @patient.id)
  end
end
