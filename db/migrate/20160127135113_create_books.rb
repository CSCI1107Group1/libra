class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.timestamps null: false
      t.string :title
      t.text :summary
      t.string :genre
      t.string :image_path
      t.references :user

    end
  end
end
