class CreateAlimentos < ActiveRecord::Migration[7.1]
  def change
    create_table :alimentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
