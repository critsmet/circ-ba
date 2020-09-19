class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.integer :connecter_id, index: true, foreign_key: {to_table: :entities}
      t.integer :connected_id, index: true, foreign_key: {to_table: :entities}
      t.timestamps
    end
  end
end
