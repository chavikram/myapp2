class AddMinistryToQuestion < ActiveRecord::Migration
  def self.up
      add_column :questions,:ministry_id,:integer
  end
  def self.down
    remove_column :questions,:ministry
  end
end
