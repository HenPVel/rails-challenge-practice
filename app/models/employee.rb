class Employee < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
  validates :title, presence: true
  validates :company_id, presence: true
  validates :company_id, numericality: { only_integer: true }
end
