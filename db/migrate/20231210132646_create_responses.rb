class CreateResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.references :feedback, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
