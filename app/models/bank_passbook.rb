class BankPassbook < ApplicationRecord
  belongs_to :user
  has_many :passbook_histories, dependent: :destroy
  validates :account_number, length: { is: 7 }
end
