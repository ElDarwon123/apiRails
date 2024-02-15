class CreateDescripcions < ActiveRecord::Migration[7.1]
  def change
    create_table :descripcions do |t|
      t.string :test

      t.timestamps
    end
  end
end
