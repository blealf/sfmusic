require 'test_helper'

class SaxNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sax_note = sax_notes(:one)
  end

  test "should get index" do
    get sax_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_sax_note_url
    assert_response :success
  end

  test "should create sax_note" do
    assert_difference('SaxNote.count') do
      post sax_notes_url, params: { sax_note: { note: @sax_note.note } }
    end

    assert_redirected_to sax_note_url(SaxNote.last)
  end

  test "should show sax_note" do
    get sax_note_url(@sax_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_sax_note_url(@sax_note)
    assert_response :success
  end

  test "should update sax_note" do
    patch sax_note_url(@sax_note), params: { sax_note: { note: @sax_note.note } }
    assert_redirected_to sax_note_url(@sax_note)
  end

  test "should destroy sax_note" do
    assert_difference('SaxNote.count', -1) do
      delete sax_note_url(@sax_note)
    end

    assert_redirected_to sax_notes_url
  end
end
