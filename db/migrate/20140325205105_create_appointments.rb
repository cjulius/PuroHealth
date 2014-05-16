class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :user, index: true
      t.references :room, index: true
      t.references :provider, index: true
      t.datetime :admitted
      t.datetime :discharge

      t.timestamps
    end
  end
end
