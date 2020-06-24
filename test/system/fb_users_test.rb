require "application_system_test_case"

class FbUsersTest < ApplicationSystemTestCase
  setup do
    @fb_user = fb_users(:one)
  end

  test "visiting the index" do
    visit fb_users_url
    assert_selector "h1", text: "Fb Users"
  end

  test "creating a Fb user" do
    visit fb_users_url
    click_on "New Fb User"

    fill_in "Link", with: @fb_user.link
    fill_in "Name", with: @fb_user.name
    fill_in "Phone", with: @fb_user.phone
    click_on "Create Fb user"

    assert_text "Fb user was successfully created"
    click_on "Back"
  end

  test "updating a Fb user" do
    visit fb_users_url
    click_on "Edit", match: :first

    fill_in "Link", with: @fb_user.link
    fill_in "Name", with: @fb_user.name
    fill_in "Phone", with: @fb_user.phone
    click_on "Update Fb user"

    assert_text "Fb user was successfully updated"
    click_on "Back"
  end

  test "destroying a Fb user" do
    visit fb_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fb user was successfully destroyed"
  end
end
