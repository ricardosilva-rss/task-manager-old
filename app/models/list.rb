class List < ApplicationRecord
  has_many :tasks

  validates :title, presence: true, length: { maximum: 25 }, allow_blank: false
  validades :description, length: { maximum: 150 }, allow_blank: true
end
