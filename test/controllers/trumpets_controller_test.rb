require 'test_helper'

class TrumpetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trumpet = trumpets(:one)
  end

  test "should get index" do
    get trumpets_url
    assert_response :success
  end

  test "should get new" do
    get new_trumpet_url
    assert_response :success
  end

  test "should create trumpet" do
    assert_difference('Trumpet.count') do
      post trumpets_url, params: { trumpet: { note: @trumpet.note, number: @trumpet.number, value: @trumpet.value } }
    end

    assert_redirected_to trumpet_url(Trumpet.last)
  end

  test "should show trumpet" do
    get trumpet_url(@trumpet)
    assert_response :success
  end

  test "should get edit" do
    get edit_trumpet_url(@trumpet)
    assert_response :success
  end

  test "should update trumpet" do
    patch trumpet_url(@trumpet), params: { trumpet: { note: @trumpet.note, number: @trumpet.number, value: @trumpet.value } }
    assert_redirected_to trumpet_url(@trumpet)
  end

  test "should destroy trumpet" do
    assert_difference('Trumpet.count', -1) do
      delete trumpet_url(@trumpet)
    end

    assert_redirected_to trumpets_url
  end
end
