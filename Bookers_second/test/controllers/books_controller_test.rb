require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get books_edit_url
    assert_response :success
  end

end
