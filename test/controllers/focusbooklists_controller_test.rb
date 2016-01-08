require 'test_helper'

class FocusbooklistsControllerTest < ActionController::TestCase
  setup do
    @focusbooklist = focusbooklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:focusbooklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create focusbooklist" do
    assert_difference('Focusbooklist.count') do
      post :create, focusbooklist: { booklist_id: @focusbooklist.booklist_id, user_id: @focusbooklist.user_id }
    end

    assert_redirected_to focusbooklist_path(assigns(:focusbooklist))
  end

  test "should show focusbooklist" do
    get :show, id: @focusbooklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @focusbooklist
    assert_response :success
  end

  test "should update focusbooklist" do
    patch :update, id: @focusbooklist, focusbooklist: { booklist_id: @focusbooklist.booklist_id, user_id: @focusbooklist.user_id }
    assert_redirected_to focusbooklist_path(assigns(:focusbooklist))
  end

  test "should destroy focusbooklist" do
    assert_difference('Focusbooklist.count', -1) do
      delete :destroy, id: @focusbooklist
    end

    assert_redirected_to focusbooklists_path
  end
end
