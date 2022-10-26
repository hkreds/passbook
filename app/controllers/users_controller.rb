class UsersController < ApplicationController
  def show
    @user = User.find(params[:user])
    @bank_passbooks = @user.passbooks
    @bank_passbook = BankPassbook.new
  end
end
