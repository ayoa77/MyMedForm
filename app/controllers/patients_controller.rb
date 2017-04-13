class PatientsController < ApplicationController
  def show
  end
  def new
redirect_to new_patient_session_path
  end
end
