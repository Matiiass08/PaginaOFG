class CreateDinamicas < ActiveRecord::Migration[7.0]
  def change
    create_table :dinamicas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
