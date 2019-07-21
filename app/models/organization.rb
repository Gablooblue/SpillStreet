class Organization < ApplicationRecord
  has_many :rants

  validates :name, presence: true, uniqueness: true
end
