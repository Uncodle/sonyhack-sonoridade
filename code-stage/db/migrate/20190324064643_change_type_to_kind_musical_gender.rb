class ChangeTypeToKindMusicalGender < ActiveRecord::Migration[5.2]
  def change
    rename_column :musical_genders, :type, :kind
  end
end
