class CreatePcps < ActiveRecord::Migration
  def change
    create_table :pcps do |t|
      t.references :provider, index: true
      t.references :user, index: true
      t.datetime :whenstarted
      t.datetime :whenended

      t.timestamps
    end
  end
end
