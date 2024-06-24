class AddImageToJuegos < ActiveRecord::Migration[7.0]
  def change
    add_column :juegos, :image, :string
  end
end
