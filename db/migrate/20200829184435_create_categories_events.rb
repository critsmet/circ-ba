class CreateCategoriesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_events do |t|
      t.references :category, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.timestamps
    end
  end
end
