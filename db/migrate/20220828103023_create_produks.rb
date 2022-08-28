class CreateProduks < ActiveRecord::Migration[7.0]
  def change
    create_table :produks do |t|
      t.string :nama
      t.string :deskripsi

      t.timestamps
    end
  end
end
