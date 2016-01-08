require 'test_helper'

class BooksinlistsControllerTest < ActionController::TestCase
  setup do
    @booksinlist = booksinlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booksinlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booksinlist" do
    assert_difference('Booksinlist.count') do
      post :create, booksinlist: { book_id: @booksinlist.book_id, booklist_id: @booksinlist.booklist_id }
    end

    assert_redirected_to booksinlist_path(assigns(:booksinlist))
  end

  test "should show booksinlist" do
    get :show, id: @booksinlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booksinlist
    assert_response :success
  end

  test "should update booksinlist" do
    patch :update, id: @booksinlist, booksinlist: { book_id: @booksinlist.book_id, booklist_id: @booksinlist.booklist_id }
    assert_redirected_to booksinlist_path(assigns(:booksinlist))
  end

  test "should destroy booksinlist" do
    assert_difference('Booksinlist.count', -1) do
      delete :destroy, id: @booksinlist
    end

    assert_redirected_to booksinlists_path
  end
end
