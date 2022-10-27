class PassbookHistoriesController < ApplicationController
  def create
    @passbook_history = PassbookHistory.new(passbook_history_params)
    @bank_passbook  = BankPassbook.find(params[:bank_passbook_id])
    if @passbook_history.save
      if @passbook_history.operation_status == true
        @passbook_history.balance = @bank_passbook.balance + @passbook_history.amount_of_money
      elsif @passbook_history.operation_status == false
        @passbook_history.balance = @bank_passbook.balance - @passbook_history.amount_of_money
      end
      @passbook_history.update(passbook_history_params)
      # @bank_passbook.balance += @passbook_history.balance
      # @bank_passbook.update(bank_passbook_params)
      redirect_to bank_passbook_path(params[:bank_passbook_id])
    else
      @passbook_histories = @bank_passbook.passbook_histories
      render "bank_passbooks/show"
    end
  end

  private

  def passbook_history_params
    params.require(:passbook_history).permit(:amount_of_money,:summary,:operation_status,:bank_passbook_id,:balance)
  end

  def bank_passbook_params
    params.require(:bank_passbook).permit(:account_number,:balance,:user_id)
  end

end
