class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.string :pal
      t.integer :kcal
      t.float :carbP
      t.float :protP
      t.float :fatP
      
      t.timestamps
    end
  end
end
