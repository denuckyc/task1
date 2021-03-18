require "application_system_test_case"

class BandwidthsTest < ApplicationSystemTestCase
  setup do
    @bandwidth = bandwidths(:one)
  end

  test "visiting the index" do
    visit bandwidths_url
    assert_selector "h1", text: "Bandwidths"
  end

  test "creating a Bandwidth" do
    visit bandwidths_url
    click_on "New Bandwidth"

    fill_in "Interface name", with: @bandwidth.interface_name
    fill_in "Server", with: @bandwidth.server_id
    fill_in "Value", with: @bandwidth.value
    fill_in "Value", with: @bandwidth.value_id
    click_on "Create Bandwidth"

    assert_text "Bandwidth was successfully created"
    click_on "Back"
  end

  test "updating a Bandwidth" do
    visit bandwidths_url
    click_on "Edit", match: :first

    fill_in "Interface name", with: @bandwidth.interface_name
    fill_in "Server", with: @bandwidth.server_id
    fill_in "Value", with: @bandwidth.value
    fill_in "Value", with: @bandwidth.value_id
    click_on "Update Bandwidth"

    assert_text "Bandwidth was successfully updated"
    click_on "Back"
  end

  test "destroying a Bandwidth" do
    visit bandwidths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bandwidth was successfully destroyed"
  end
end
