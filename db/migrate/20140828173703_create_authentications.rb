class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :provider
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
