require 'test_helper'

class TodokistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get todokists_new_url
    assert_response :success
  end

end
