require 'test_helper'

class FbUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fb_user = fb_users(:one)
  end

  test "should get index" do
    get fb_users_url
    assert_response :success
  end

  test "should get new" do
    get new_fb_user_url
    assert_response :success
  end

  test "should create fb_user" do
    assert_difference('FbUser.count') do
      post fb_users_url, params: { fb_user: { link: @fb_user.link, name: @fb_user.name, phone: @fb_user.phone } }
    end

    assert_redirected_to fb_user_url(FbUser.last)
  end

  test "should show fb_user" do
    get fb_user_url(@fb_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_fb_user_url(@fb_user)
    assert_response :success
  end

  test "should update fb_user" do
    patch fb_user_url(@fb_user), params: { fb_user: { link: @fb_user.link, name: @fb_user.name, phone: @fb_user.phone } }
    assert_redirected_to fb_user_url(@fb_user)
  end

  test "should destroy fb_user" do
    assert_difference('FbUser.count', -1) do
      delete fb_user_url(@fb_user)
    end

    assert_redirected_to fb_users_url
  end
end
