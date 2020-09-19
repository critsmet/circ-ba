class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :handle, index: {unique: true}
      t.string :name, null: true, index: true
      t.string :email, index: {unique: true}
      t.string :password_digest
      t.boolean :confirmed, default: false
      t.string :confirmation_token, default: ""
      t.string :address
      t.string :image_url
      t.timestamps
    end
  end
end
