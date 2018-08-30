class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :choice
      t.references :word
      t.references :lesson
      t.timestamps
    end
  end
end
