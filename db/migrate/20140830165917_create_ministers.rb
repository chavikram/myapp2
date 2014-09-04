class CreateMinisters < ActiveRecord::Migration
  def change
    create_table :ministers do |t|
      t.belongs_to :name_title, index: true
      t.belongs_to :question, index: true
      t.string :name
      
      t.timestamps
    end
  end
end
