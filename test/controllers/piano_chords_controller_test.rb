require 'test_helper'

class PianoChordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piano_chord = piano_chords(:one)
  end

  test "should get index" do
    get piano_chords_url
    assert_response :success
  end

  test "should get new" do
    get new_piano_chord_url
    assert_response :success
  end

  test "should create piano_chord" do
    assert_difference('PianoChord.count') do
      post piano_chords_url, params: { piano_chord: { interval: @piano_chord.interval, name: @piano_chord.name } }
    end

    assert_redirected_to piano_chord_url(PianoChord.last)
  end

  test "should show piano_chord" do
    get piano_chord_url(@piano_chord)
    assert_response :success
  end

  test "should get edit" do
    get edit_piano_chord_url(@piano_chord)
    assert_response :success
  end

  test "should update piano_chord" do
    patch piano_chord_url(@piano_chord), params: { piano_chord: { interval: @piano_chord.interval, name: @piano_chord.name } }
    assert_redirected_to piano_chord_url(@piano_chord)
  end

  test "should destroy piano_chord" do
    assert_difference('PianoChord.count', -1) do
      delete piano_chord_url(@piano_chord)
    end

    assert_redirected_to piano_chords_url
  end
end
