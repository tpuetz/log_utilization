require 'test_helper'

class IntakeNotesControllerTest < ActionController::TestCase
  setup do
    @intake_note = intake_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intake_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intake_note" do
    assert_difference('IntakeNote.count') do
      post :create, intake_note: @intake_note.attributes
    end

    assert_redirected_to intake_note_path(assigns(:intake_note))
  end

  test "should show intake_note" do
    get :show, id: @intake_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intake_note
    assert_response :success
  end

  test "should update intake_note" do
    put :update, id: @intake_note, intake_note: @intake_note.attributes
    assert_redirected_to intake_note_path(assigns(:intake_note))
  end

  test "should destroy intake_note" do
    assert_difference('IntakeNote.count', -1) do
      delete :destroy, id: @intake_note
    end

    assert_redirected_to intake_notes_path
  end
end
