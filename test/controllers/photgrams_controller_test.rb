require 'test_helper'

class PhotgramsControllerTest < ActionController::TestCase
  setup do
    @photgram = photgrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photgrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photgram" do
    assert_difference('Photgram.count') do
      post :create, photgram: { description: @photgram.description, picture: @photgram.picture }
    end

    assert_redirected_to photgram_path(assigns(:photgram))
  end

  test "should show photgram" do
    get :show, id: @photgram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photgram
    assert_response :success
  end

  test "should update photgram" do
    patch :update, id: @photgram, photgram: { description: @photgram.description, picture: @photgram.picture }
    assert_redirected_to photgram_path(assigns(:photgram))
  end

  test "should destroy photgram" do
    assert_difference('Photgram.count', -1) do
      delete :destroy, id: @photgram
    end

    assert_redirected_to photgrams_path
  end
end
