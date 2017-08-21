require 'test_helper'

class PianoNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piano_note = piano_notes(:one)
  end

  test "should get index" do
    get piano_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_piano_note_url
    assert_response :success
  end

  test "should create piano_note" do
    assert_difference('PianoNote.count') do
      post piano_notes_url, params: { piano_note: { key: @piano_note.key, note: @piano_note.note, number: @piano_note.number } }
    end

    assert_redirected_to piano_note_url(PianoNote.last)
  end

  test "should show piano_note" do
    get piano_note_url(@piano_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_piano_note_url(@piano_note)
    assert_response :success
  end

  test "should update piano_note" do
    patch piano_note_url(@piano_note), params: { piano_note: { key: @piano_note.key, note: @piano_note.note, number: @piano_note.number } }
    assert_redirected_to piano_note_url(@piano_note)
  end

  test "should destroy piano_note" do
    assert_difference('PianoNote.count', -1) do
      delete piano_note_url(@piano_note)
    end

    assert_redirected_to piano_notes_url
  end
end
