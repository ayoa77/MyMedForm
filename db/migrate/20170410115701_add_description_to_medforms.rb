class AddDescriptionToMedforms < ActiveRecord::Migration[5.0]
  def change
    add_column :medforms, :description, :string
  end
end
