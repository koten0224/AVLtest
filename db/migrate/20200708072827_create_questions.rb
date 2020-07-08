class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_id
      t.string :question_text
      t.string :answer
      t.string :question_title
      t.string :hashtags
      t.string :topics_algebra
      t.string :topics_geometry
      t.string :topics_trignometry
      t.string :topics_arithmetic
      t.string :calculator
      t.string :answer_type
      t.string :chart
      t.string :length

      t.timestamps
    end
  end
end
