class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :user, index: true, foreign_key: true
      
      t.string :name
      t.text :text

      t.boolean :deleted, default: false

      t.timestamps null: false
    end
  end
end
