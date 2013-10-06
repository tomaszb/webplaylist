require 'test_helper'

class SongplaylinksControllerTest < ActionController::TestCase
  setup do
    @songplaylink = songplaylinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songplaylinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create songplaylink" do
    assert_difference('Songplaylink.count') do
      post :create, songplaylink: { playlist_id: @songplaylink.playlist_id, song_id: @songplaylink.song_id }
    end

    assert_redirected_to songplaylink_path(assigns(:songplaylink))
  end

  test "should show songplaylink" do
    get :show, id: @songplaylink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @songplaylink
    assert_response :success
  end

  test "should update songplaylink" do
    patch :update, id: @songplaylink, songplaylink: { playlist_id: @songplaylink.playlist_id, song_id: @songplaylink.song_id }
    assert_redirected_to songplaylink_path(assigns(:songplaylink))
  end

  test "should destroy songplaylink" do
    assert_difference('Songplaylink.count', -1) do
      delete :destroy, id: @songplaylink
    end

    assert_redirected_to songplaylinks_path
  end
end
