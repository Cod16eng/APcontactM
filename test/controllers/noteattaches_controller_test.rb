require 'test_helper'

class NoteattachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noteattach = noteattaches(:one)
  end

  test "should get index" do
    get noteattaches_url
    assert_response :success
  end

  test "should get new" do
    get new_noteattach_url
    assert_response :success
  end

  test "should create noteattach" do
    assert_difference('Noteattach.count') do
      post noteattaches_url, params: { noteattach: { attach: @noteattach.attach, name: @noteattach.name, note_id: @noteattach.note_id } }
    end

    assert_redirected_to noteattach_url(Noteattach.last)
  end

  test "should show noteattach" do
    get noteattach_url(@noteattach)
    assert_response :success
  end

  test "should get edit" do
    get edit_noteattach_url(@noteattach)
    assert_response :success
  end

  test "should update noteattach" do
    patch noteattach_url(@noteattach), params: { noteattach: { attach: @noteattach.attach, name: @noteattach.name, note_id: @noteattach.note_id } }
    assert_redirected_to noteattach_url(@noteattach)
  end

  test "should destroy noteattach" do
    assert_difference('Noteattach.count', -1) do
      delete noteattach_url(@noteattach)
    end

    assert_redirected_to noteattaches_url
  end
end
