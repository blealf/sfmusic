require 'test_helper'

class NotationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notations_index_url
    assert_response :success
  end

end
