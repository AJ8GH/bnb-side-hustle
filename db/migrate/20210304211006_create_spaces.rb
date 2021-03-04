class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :price, null: false
    end
  end
end
