class AddDeleteColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :is_delete, :integer
  end
end
