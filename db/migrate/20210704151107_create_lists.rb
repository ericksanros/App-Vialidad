class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :mat
      t.references :school, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.string :arrive
      t.string :pick

      t.timestamps
    end
  end
end
