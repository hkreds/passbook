class PassbookHistoriesController < ApplicationController
  def create
    @passbook_history = PassbookHistory.new(passbook_history_params)
    if @passbook_history.save
      redirect_to bank_passbook_path(params[:bank_passbook_id])
    else
      @bank_passbook  = BankPassbook.find(params[:bank_passbook_id])
      @passbook_histories = @bank_passbook.passbook_histories
      render "bank_passbooks/show"
    end
  end

  private

  def passbook_history_params
    params.require(:passbook_history).permit(:amount_of_money,:summary,:operation_status,:bank_passbook_id)
  end
  
end
