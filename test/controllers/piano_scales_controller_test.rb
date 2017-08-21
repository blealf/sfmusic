require 'test_helper'

class PianoScalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piano_scale = piano_scales(:one)
  end

  test "should get index" do
    get piano_scales_url
    assert_response :success
  end

  test "should get new" do
    get new_piano_scale_url
    assert_response :success
  end

  test "should create piano_scale" do
    assert_difference('PianoScale.count') do
      post piano_scales_url, params: { piano_scale: { interval: @piano_scale.interval, name: @piano_scale.name } }
    end

    assert_redirected_to piano_scale_url(PianoScale.last)
  end

  test "should show piano_scale" do
    get piano_scale_url(@piano_scale)
    assert_response :success
  end

  test "should get edit" do
    get edit_piano_scale_url(@piano_scale)
    assert_response :success
  end

  test "should update piano_scale" do
    patch piano_scale_url(@piano_scale), params: { piano_scale: { interval: @piano_scale.interval, name: @piano_scale.name } }
    assert_redirected_to piano_scale_url(@piano_scale)
  end

  test "should destroy piano_scale" do
    assert_difference('PianoScale.count', -1) do
      delete piano_scale_url(@piano_scale)
    end

    assert_redirected_to piano_scales_url
  end
end
