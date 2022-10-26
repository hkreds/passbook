class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bank_passbooks = @user.bank_passbooks
    @bank_passbook = BankPassbook.new
  end
end
