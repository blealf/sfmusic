require 'test_helper'

class TrumpetScalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trumpet_scales_index_url
    assert_response :success
  end

end
