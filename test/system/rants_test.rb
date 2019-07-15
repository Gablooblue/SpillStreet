require "application_system_test_case"

class RantsTest < ApplicationSystemTestCase
  setup do
    @rant = rants(:one)
  end

  test "visiting the index" do
    visit rants_url
    assert_selector "h1", text: "Rants"
  end

  test "creating a Rant" do
    visit rants_url
    click_on "New Rant"

    fill_in "Body", with: @rant.body
    fill_in "Organization", with: @rant.organization_id
    click_on "Create Rant"

    assert_text "Rant was successfully created"
    click_on "Back"
  end

  test "updating a Rant" do
    visit rants_url
    click_on "Edit", match: :first

    fill_in "Body", with: @rant.body
    fill_in "Organization", with: @rant.organization_id
    click_on "Update Rant"

    assert_text "Rant was successfully updated"
    click_on "Back"
  end

  test "destroying a Rant" do
    visit rants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rant was successfully destroyed"
  end
end
