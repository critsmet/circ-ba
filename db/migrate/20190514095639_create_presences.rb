class CreatePresences < ActiveRecord::Migration[5.2]
  def change
    create_table :presences do |t|
      t.references :entity, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.timestamps
    end
  end
end
