class AddBalanceToPassbookHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :passbook_histories, :balance, :integer
  end
end
