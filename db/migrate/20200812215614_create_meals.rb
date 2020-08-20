class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :serveQty
      t.string :foodName
      t.string :serveUnit
      t.decimal :calories
      t.decimal :allFat
      t.decimal :satFat
      t.decimal :sodium
      t.decimal :fiber
      t.decimal :sugar
      t.decimal :protein
      t.decimal :carbohydrates
      t.decimal :cholesterol
      t.string :img
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
