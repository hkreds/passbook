class AddBankPassbookIdToPassbookHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :passbook_histories, :bank_passbook_id, :integer
  end
end
