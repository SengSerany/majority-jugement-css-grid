class RenameColumnGoodToGood < ActiveRecord::Migration[5.2]
  def change
    rename_column :candidats, :Good, :good
  end
end
