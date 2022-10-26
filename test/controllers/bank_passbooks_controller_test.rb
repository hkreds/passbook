require "test_helper"

class BankPassbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bank_passbooks_show_url
    assert_response :success
  end
end
