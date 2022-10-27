class PassbookHistory < ApplicationRecord
  belongs_to :bank_passbook
  validates :amount_of_money, presence: true
  validates :summary, length: {maximum:30}
  validates :operation_status, inclusion: [true, false]
end
