class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :cname
      t.string :addr
      t.string :mob

      t.timestamps null: false
    end
  end
end
