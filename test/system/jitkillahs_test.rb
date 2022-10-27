require "application_system_test_case"

class JitkillahsTest < ApplicationSystemTestCase
  setup do
    @jitkillah = jitkillahs(:one)
  end

  test "visiting the index" do
    visit jitkillahs_url
    assert_selector "h1", text: "Jitkillahs"
  end

  test "should create jitkillah" do
    visit jitkillahs_url
    click_on "New jitkillah"

    fill_in "Content", with: @jitkillah.content
    fill_in "User", with: @jitkillah.user_id
    click_on "Create Jitkillah"

    assert_text "Jitkillah was successfully created"
    click_on "Back"
  end

  test "should update Jitkillah" do
    visit jitkillah_url(@jitkillah)
    click_on "Edit this jitkillah", match: :first

    fill_in "Content", with: @jitkillah.content
    fill_in "User", with: @jitkillah.user_id
    click_on "Update Jitkillah"

    assert_text "Jitkillah was successfully updated"
    click_on "Back"
  end

  test "should destroy Jitkillah" do
    visit jitkillah_url(@jitkillah)
    click_on "Destroy this jitkillah", match: :first

    assert_text "Jitkillah was successfully destroyed"
  end
end
