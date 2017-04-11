class MedformsController < UsersController
  def new
   @user = User.find(params[:user_id])
   @medform = Medform.new
  end
  def create
    @medform = @user.medforms.new(medform_params)
if @medform.save
  redirect_to user_path(current_user)
else
  render :new
end

end


  private
      # Using a private method to encapsulate the permissible parameters is
      # a good pattern since you'll be able to reuse the same permit
      # list between create and update. Also, you can specialize this method
      # with per-user checking of permissible attributes.
      def medform_params
        params.require(:medform).permit(:first_name, :last_name, :address, :city, :country, :postal_code, :phone, :birth_date, :primary_language, :gender, :medications, :allergies, :hospitalisations, :conditions, :avatar, :pdf)
      end
    end
