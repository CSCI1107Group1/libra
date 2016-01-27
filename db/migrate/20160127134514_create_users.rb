class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps null: false
      t.string :name
      t.string :email
      t.string :password
      t.string :image_path

    end
  end
end
