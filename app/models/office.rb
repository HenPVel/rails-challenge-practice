class Office < ApplicationRecord
  belongs_to :building
  belongs_to :company
  has_many :employees, through: :company
  validates :building_id, presence: true
  validates :building_id, numericality: { only_integer: true }
  validates :company_id, presence: true
  validates :company_id, numericality: { only_integer: true }
  validates :floor, presence: true
  validates :floor, numericality: { greater_than_or_equal_to: 1, only_integer: true }
end
