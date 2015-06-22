class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :user, index: true, foreign_key: true
      
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
