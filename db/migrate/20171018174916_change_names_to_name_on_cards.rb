class ChangeNamesToNameOnCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :names
    add_column :cards, :name, :string
  end
end
