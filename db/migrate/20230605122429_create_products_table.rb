class CreateProductsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :amount
      t.string :image
    end
  end
end
