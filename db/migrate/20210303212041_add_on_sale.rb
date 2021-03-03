class AddOnSale < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :is_on_sale, :boolean
  end
end
