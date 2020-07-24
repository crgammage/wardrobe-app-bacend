class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :category
      t.string :size

      t.timestamps
    end
  end
end
