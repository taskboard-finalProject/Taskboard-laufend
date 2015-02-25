class AddCategoryIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :category_id, :integer
    t.references :category
  end
end
