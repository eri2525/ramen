class AddDetailsToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :address, :string
    add_column :shops, :access, :string
    add_column :shops, :inquiry, :string
  end
end
