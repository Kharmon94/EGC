require 'test_helper'

class SignalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signal_user = signal_users(:one)
  end

  test "should get index" do
    get signal_users_url
    assert_response :success
  end

  test "should get new" do
    get new_signal_user_url
    assert_response :success
  end

  test "should create signal_user" do
    assert_difference('SignalUser.count') do
      post signal_users_url, params: { signal_user: { email: @signal_user.email, first_name: @signal_user.first_name, last_name: @signal_user.last_name, phone_number: @signal_user.phone_number, telegram_username: @signal_user.telegram_username } }
    end

    assert_redirected_to signal_user_url(SignalUser.last)
  end

  test "should show signal_user" do
    get signal_user_url(@signal_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_signal_user_url(@signal_user)
    assert_response :success
  end

  test "should update signal_user" do
    patch signal_user_url(@signal_user), params: { signal_user: { email: @signal_user.email, first_name: @signal_user.first_name, last_name: @signal_user.last_name, phone_number: @signal_user.phone_number, telegram_username: @signal_user.telegram_username } }
    assert_redirected_to signal_user_url(@signal_user)
  end

  test "should destroy signal_user" do
    assert_difference('SignalUser.count', -1) do
      delete signal_user_url(@signal_user)
    end

    assert_redirected_to signal_users_url
  end
end
