require 'test_helper'

class FilePdfControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get file_pdf_new_url
    assert_response :success
  end

  test "should get create" do
    get file_pdf_create_url
    assert_response :success
  end

  test "should get edit" do
    get file_pdf_edit_url
    assert_response :success
  end

  test "should get update" do
    get file_pdf_update_url
    assert_response :success
  end

  test "should get destroy" do
    get file_pdf_destroy_url
    assert_response :success
  end

end
