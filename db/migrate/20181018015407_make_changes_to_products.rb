class MakeChangesToProducts < ActiveRecord::Migration[5.2]
  def change
    # rename title to name
    rename_column :products, :title, :name
    # change description from string to text
    change_column :products, :description, :text
    # change price to decimal
    change_column :products, :price, :decimal, precision: 5, scale: 2
    # remove isbn column
    remove_column :products, :isbn, :string
    add_column :products, :active, :boolean, default: true
  end
end
