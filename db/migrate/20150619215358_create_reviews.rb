class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      
      t.text :text

      t.boolean :deleted, default: false

      t.timestamps null: false
    end
  end
end
