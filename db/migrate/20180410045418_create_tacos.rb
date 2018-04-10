class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.text :meat
      t.boolean :salsa
      t.boolean :rice
      t.text :notes

      t.timestamps null: false
    end
  end
end
