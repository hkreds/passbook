class BankPassbooksController < ApplicationController
  def create
    @bank_passbook = BankPassbook.new(bank_passbook_params)
    if @bank_passbook.save
      @passbook_history = PassbookHistory.create(amount_of_money: @bank_passbook.balance,summary: "口座登録",operation_status: true,
                                                 bank_passbook_id: @bank_passbook.id,balance: @bank_passbook.balance)
      redirect_to user_path(current_user)
    else
      @user = current_user
      @bank_passbooks = @user.bank_passbooks
      render "users/show"
    end
  end

  def destroy
    @bank_passbook = BankPassbook.find(params[:id])
    @bank_passbook.destroy
    redirect_to user_path(current_user)
  end

  def show
    @bank_passbook  = BankPassbook.find(params[:id])
    @passbook_history = PassbookHistory.new
    @passbook_histories = @bank_passbook.passbook_histories
  end

  private

  def bank_passbook_params
    params.require(:bank_passbook).permit(:account_number,:balance,:user_id)
  end

end
