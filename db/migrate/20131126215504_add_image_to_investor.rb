class AddImageToInvestor < ActiveRecord::Migration
  def change
    add_column :investors, :image, :string
  end
end
