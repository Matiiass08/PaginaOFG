class AddImageToAplausos < ActiveRecord::Migration[7.0]
  def change
    add_column :aplausos, :image, :string
  end
end
