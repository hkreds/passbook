class CreatePassbookHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :passbook_histories do |t|
      t.string :summary
      t.integer :amount_of_money

      t.timestamps
    end
  end
end
