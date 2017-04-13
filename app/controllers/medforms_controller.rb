class MedformsController < UsersController
  def new
   @patient = Patient.find(params[:user_id])
   @medform = Medform.new
  end
  def create
    @medform = @patient.medforms.new(medform_params)
if @medform.save && medform_params.first_name.present?
  @patient.first_name = medform_params.first_name
  @patient.last_name = medform_params.last_name
  @patient.id_string = medform_params.id_string
  @patient.address = medform_params.address
  @patient.city = medform_params.city
  @patient.country = medform_params.country
  @patient.postal_code = medform_params.postal_code
  @patient.phone = medform_params.phone
  @patient.save
  redirect_to user_path(@patient)
elsif @medform.save
  redirect_to user_path(@patient)
else
  render :new
end
end

def show
  # @reviews = Review.find_by(place_id: params[:id])
  # @review = current_user.reviews.new
  @place = Place.find(params[:id])
  render template: 'places/show'
end

def edit
@medforms = Medform.find(params[:id])


end

def update
@medforms = Medform.find(params[:id])
if @medform.update && medform_params.first_name.present?
  @patient.first_name = medform_params.first_name
  @patient.last_name = medform_params.last_name
  @patient.id_string = medform_params.id_string
  @patient.address = medform_params.address
  @patient.city = medform_params.city
  @patient.country = medform_params.country
  @patient.postal_code = medform_params.postal_code
  @patient.save
  flash[:success] = 'You have successfully updated your form'
  redirect_to @medform
elsif @medform.update
  flash[:success] = 'You have successfully updated your form'
  redirect_to @medform

else
flash[:danger] = 'Error updating form'
render :edit
end
end



  private
      # Using a private method to encapsulate the permissible parameters is
      # a good pattern since you'll be able to reuse the same permit
      # list between create and update. Also, you can specialize this method
      # with per-user checking of permissible attributes.
      def medform_params
        params.require(:medform).permit(:first_name, :last_name, :id_string, :address, :city, :country, :postal_code, :phone, :birth_date, :primary_language, :gender, :medications, :allergies, :hospitalisations, :conditions, :pdf)
      end
    end
