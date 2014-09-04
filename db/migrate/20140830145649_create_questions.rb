class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :question_type, index: true
      t.belongs_to :notice, index: true
      t.belongs_to :section, index: true
      t.integer :question_no
      t.belongs_to :session, index: true
      t.string :subject
      t.date :answer_date
      t.date :received_date

      t.timestamps
    end
  end
end
