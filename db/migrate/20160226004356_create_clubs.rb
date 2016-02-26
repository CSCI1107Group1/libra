class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|

      t.timestamps null: false
      t.string :name
      t.text :description 
      t.references :book
      t.references :user
      
    end
  end
end
