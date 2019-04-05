class AddImagesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :images, :string, default: "https://i.ibb.co/xHVZgM8/Logo-dhbkdn.jpg"
  end
end
