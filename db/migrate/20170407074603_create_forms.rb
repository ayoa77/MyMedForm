class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :phone
      t.string :birth_date
      t.string :primary_language
      t.integer :gender
      t.string :medications
      t.string :allergies
      t.string :hospitilisations
      t.string :conditions
      t.integer :user_id

      t.timestamps
    end
  end
end
