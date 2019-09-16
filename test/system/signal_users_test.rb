require "application_system_test_case"

class SignalUsersTest < ApplicationSystemTestCase
  setup do
    @signal_user = signal_users(:one)
  end

  test "visiting the index" do
    visit signal_users_url
    assert_selector "h1", text: "Signal Users"
  end

  test "creating a Signal user" do
    visit signal_users_url
    click_on "New Signal User"

    fill_in "Email", with: @signal_user.email
    fill_in "First name", with: @signal_user.first_name
    fill_in "Last name", with: @signal_user.last_name
    fill_in "Phone number", with: @signal_user.phone_number
    fill_in "Telegram username", with: @signal_user.telegram_username
    click_on "Create Signal user"

    assert_text "Signal user was successfully created"
    click_on "Back"
  end

  test "updating a Signal user" do
    visit signal_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @signal_user.email
    fill_in "First name", with: @signal_user.first_name
    fill_in "Last name", with: @signal_user.last_name
    fill_in "Phone number", with: @signal_user.phone_number
    fill_in "Telegram username", with: @signal_user.telegram_username
    click_on "Update Signal user"

    assert_text "Signal user was successfully updated"
    click_on "Back"
  end

  test "destroying a Signal user" do
    visit signal_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signal user was successfully destroyed"
  end
end
