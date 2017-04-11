class RenameFormsToMedforms < ActiveRecord::Migration[5.0]
  def change
      rename_table :forms, :medforms
  end
end
