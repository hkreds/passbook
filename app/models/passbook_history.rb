class PassbookHistory < ApplicationRecord
  belongs_to :bank_passbook
  validates :amount_of_money, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :summary, length: {maximum:30}
  validates :operation_status, inclusion: [true, false]
end
