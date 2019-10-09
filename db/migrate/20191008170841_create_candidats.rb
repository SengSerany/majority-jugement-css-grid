class CreateCandidats < ActiveRecord::Migration[5.2]
  def change
    create_table :candidats do |t|
      t.string :name
      t.string :mediumMark
      t.integer :exellent
      t.integer :veryGood
      t.integer :Good
      t.integer :soSo
      t.integer :notReally
      t.integer :bad
      t.integer :veryBad

      t.timestamps
    end
  end
end
