class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :field, foreign_key: true
      t.references :musical_gender, foreign_key: true
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
