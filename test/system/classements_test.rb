require "application_system_test_case"

class ClassementsTest < ApplicationSystemTestCase
  setup do
    @classement = classements(:one)
  end

  test "visiting the index" do
    visit classements_url
    assert_selector "h1", text: "Classements"
  end

  test "should create classement" do
    visit classements_url
    click_on "New classement"

    fill_in "Date", with: @classement.date
    click_on "Create Classement"

    assert_text "Classement was successfully created"
    click_on "Back"
  end

  test "should update Classement" do
    visit classement_url(@classement)
    click_on "Edit this classement", match: :first

    fill_in "Date", with: @classement.date
    click_on "Update Classement"

    assert_text "Classement was successfully updated"
    click_on "Back"
  end

  test "should destroy Classement" do
    visit classement_url(@classement)
    click_on "Destroy this classement", match: :first

    assert_text "Classement was successfully destroyed"
  end
end
