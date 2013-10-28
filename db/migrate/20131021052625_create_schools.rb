class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :category_id
      t.string :address
      t.integer :phone
      t.string :website
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
