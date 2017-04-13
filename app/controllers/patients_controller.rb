class PatientsController < Devise::SessionsController
  def show
    @patient = Patient.find(params[:id])
    @medforms = Medform.where(user_id: @patient.id)
  end
end
