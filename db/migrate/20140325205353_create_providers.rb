class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.references :name, index: true
      t.references :providertype, index: true

      t.timestamps
    end
  end
end
