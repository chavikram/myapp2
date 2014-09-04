class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.belongs_to :session_type, index: true
      t.string :year

      t.timestamps
    end
  end
end
