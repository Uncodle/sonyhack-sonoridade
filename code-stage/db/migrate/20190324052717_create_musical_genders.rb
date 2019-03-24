class CreateMusicalGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :musical_genders do |t|
      t.string :type

      t.timestamps
    end
  end
end
