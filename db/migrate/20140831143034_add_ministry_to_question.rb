class AddMinistryToQuestion < ActiveRecord::Migration
  def self.up
      add_column :questions,:ministry,:belongs_to
  end
  def self.down
    remove_column :questions,:ministry
  end
end
