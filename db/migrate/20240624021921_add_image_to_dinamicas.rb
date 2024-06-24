class AddImageToDinamicas < ActiveRecord::Migration[7.0]
  def change
    add_column :dinamicas, :image, :string
  end
end
