class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true, foreign_key: true
      t.references :blog, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.references :review, index: true, foreign_key: true

      t.string :action

      t.timestamps null: false
    end
  end
end
