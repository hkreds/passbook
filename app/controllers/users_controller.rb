class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bank_passbooks = @user.bank_passbooks
    @bank_passbook = BankPassbook.new
    @user_all_balance = 0
    @bank_passbooks.each do |bank_passbook|
      @user_all_balance += bank_passbook.balance
    end
  end
end
