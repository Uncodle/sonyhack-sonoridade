class Field < ApplicationRecord
  has_many :user
  has_many :persona
  has_many :question
end
