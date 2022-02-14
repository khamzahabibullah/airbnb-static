require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the flats homepage" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end
end
