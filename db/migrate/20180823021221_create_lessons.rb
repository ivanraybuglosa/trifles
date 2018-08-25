class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :category
      t.references :user
      t.integer :result
      t.timestamps
    end
  end
end
