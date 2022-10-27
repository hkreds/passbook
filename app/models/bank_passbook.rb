class BankPassbook < ApplicationRecord
  belongs_to :user
  has_many :passbook_histories, dependent: :destroy
  validates :account_number, numericality: {only_integer: true}, length: { is: 7 }, uniqueness: {scope: [:user_id]}
  validates :balance, presence: true
end
