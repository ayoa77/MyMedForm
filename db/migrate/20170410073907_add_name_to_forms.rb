class AddNameToForms < ActiveRecord::Migration[5.0]
  def change
    add_column :forms, :form_name, :string
    add_column :forms, :id_string, :string
  end
end
