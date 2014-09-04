class CreateMyministers < ActiveRecord::Migration
  def change
    create_table :myministers do |t|
      t.string :name
      t.belongs_to :ministry, index: true

      t.timestamps
    end
  end
end
