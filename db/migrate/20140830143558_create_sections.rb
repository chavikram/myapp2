class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.belongs_to :section_officer, index: true
      t.belongs_to :under_secretary, index: true
      t.belongs_to :director, index: true

      t.timestamps
    end
  end
end
