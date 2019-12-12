require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup { @note = notes(:one) }

  test 'should get index' do
    get notes_url
    assert_response :success
  end

  test 'should get new' do
    get new_note_url
    assert_response :success
  end

  test 'should create note' do
    assert_difference('Note.count') do
      post notes_url,
           params: { note: { title: @note.title, user_id: @note.user_id } }
    end

    assert_redirected_to note_url(Note.last)
  end

  test 'should show note' do
    get note_url(@note)
    assert_response :success
  end

  test 'should get edit' do
    get edit_note_url(@note)
    assert_response :success
  end

  test 'should update note' do
    patch note_url(@note),
          params: { note: { title: @note.title, user_id: @note.user_id } }
    assert_redirected_to note_url(@note)
  end

  test 'should destroy note' do
    assert_difference('Note.count', -1) { delete note_url(@note) }

    assert_redirected_to notes_url
  end
end
