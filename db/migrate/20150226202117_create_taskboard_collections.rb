class CreateTaskboardCollections < ActiveRecord::Migration
  def change
    create_table :taskboard_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end
