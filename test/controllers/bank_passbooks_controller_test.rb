require "test_helper"

class BankPassbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bank_passbooks_index_url
    assert_response :success
  end

  test "should get show" do
    get bank_passbooks_show_url
    assert_response :success
  end
end
