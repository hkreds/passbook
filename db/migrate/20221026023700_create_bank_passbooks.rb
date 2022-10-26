class CreateBankPassbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_passbooks do |t|
      t.integer :user_id
      t.string :account_number
      t.integer :balance, default: 0

      t.timestamps
    end
  end
end
