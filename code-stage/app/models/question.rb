class Question < ApplicationRecord
  belongs_to :user
  belongs_to :field
  belongs_to :musical_gender
  belongs_to :persona
end
