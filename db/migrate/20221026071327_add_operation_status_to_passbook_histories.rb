class AddOperationStatusToPassbookHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :passbook_histories, :operation_status, :boolean
  end
end
