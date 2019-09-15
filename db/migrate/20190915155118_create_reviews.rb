class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :title
      t.string :content
      t.belongs_to :reader, foreign_key: true
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
