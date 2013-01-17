class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.boolean :is_fast

      t.timestamps
    end
  end
end
