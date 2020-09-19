class CreateEventsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :events_tags do |t|
      t.references :event, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps
    end
  end
end
