class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.references :profile, index: true, foreign_key: true
      t.string :name
      t.string :type
      t.integer :cost
      t.integer :acost
      t.integer :bcost
      t.boolean :active
      t.boolean :balance
      t.date :date

      t.timestamps null: false
    end
  end
end
