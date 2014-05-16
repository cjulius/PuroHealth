class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :name, index: true
      t.text :location

      t.timestamps
    end
  end
end
