class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.references :category
      t.string :content
      t.timestamps
    end
  end
end
