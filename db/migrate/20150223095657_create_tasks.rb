class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :aufgabe
      t.string :UserEmailAd
      t.integer :TaskboardCollectionID
      t.timestamps
    end
  end
end
