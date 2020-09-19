class CreateEvents < ActiveRecord::Migration[5.2]
  def change
      create_table :events do |t|
        t.string :name, index: true
        t.timestamp :date, index: true
        t.string :description
        t.boolean :online
        t.string :address, index: true
        t.decimal :longitude, index: true
        t.decimal :latitude, index: true
        t.string :edit_token, default: ''
        t.boolean :self_destruct, default: false
        t.boolean :approved, default: false, index: true
        t.boolean :needs_review, default: true, index: true
        t.string :image_url
        t.timestamps
      end
    end
end
