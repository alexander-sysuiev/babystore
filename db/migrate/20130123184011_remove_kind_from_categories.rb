class RemoveKindFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :kind
  end
end
