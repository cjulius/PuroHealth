class CreatePatientFileItems < ActiveRecord::Migration
  def change
    create_table :patient_file_items do |t|
      t.references :user, index: true
      t.references :fileitemtype, index: true
      t.text :notes
      t.references :p_c_p, index: true

      t.timestamps
    end
  end
end
