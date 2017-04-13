class HomeController < ApplicationController
  def index
     if current_user.type == "patient"
       render "/home/patients"
     elsif current_user.type == "hospital"
       render "/home/hospitals"
    else
      redirect_to new_patient_registration
    end
  end
end
