class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.belongs_to :session, index: true
      t.string :house_diary_no
      t.date :answer_date
      t.string :subject
      t.string :received_date

      t.timestamps
    end
  end
end
