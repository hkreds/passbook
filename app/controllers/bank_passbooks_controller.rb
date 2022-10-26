class BankPassbooksController < ApplicationController
  def create
    @bank_passbook = BankPassbook.new(bank_passbook_params)
    if @bank_passbook.save
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
    redirect_to request.referer
  end

  def show
  end

  private

  def bank_passbook_params
    params.require(:bank_passbook).permit(:account_number,:balance,:user_id)
  end

end
