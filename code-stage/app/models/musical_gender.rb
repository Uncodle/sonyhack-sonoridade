class MusicalGender < ApplicationRecord
  has_many :users
  has_many :personas
  has_many :questions
end
