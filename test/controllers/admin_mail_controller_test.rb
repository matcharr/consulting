require 'test_helper'

class AdminMailControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_mail_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_mail_create_url
    assert_response :success
  end

end
