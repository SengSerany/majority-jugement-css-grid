class AddDefaultValueToCandidatsTable < ActiveRecord::Migration[5.2]
  def up
    change_column :candidats, :exellent, :integer, default: 0
    change_column :candidats, :veryGood, :integer, default: 0
    change_column :candidats, :Good, :integer, default: 0
    change_column :candidats, :soSo, :integer, default: 0
    change_column :candidats, :notReally, :integer, default: 0
    change_column :candidats, :bad, :integer, default: 0
    change_column :candidats, :veryBad, :integer, default: 0
  end
  
  def down
    change_column :candidats, :exellent, :integer, default: nil
    change_column :candidats, :veryGood, :integer, default: nil
    change_column :candidats, :Good, :integer, default: nil
    change_column :candidats, :soSo, :integer, default: nil
    change_column :candidats, :notReally, :integer, default: nil
    change_column :candidats, :bad, :integer, default: nil
    change_column :candidats, :veryBad, :integer, default: nil
  end
end
