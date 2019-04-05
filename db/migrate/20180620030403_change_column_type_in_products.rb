class ChangeColumnTypeInProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :product_type, 'integer USING CAST(product_type AS integer)', default: 0
    # change_column :products, :product_type, :integer, default: 0
  end
end
