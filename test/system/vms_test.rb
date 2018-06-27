require "application_system_test_case"

class VmsTest < ApplicationSystemTestCase
  setup do
    @vm = vms(:one)
  end

  test "visiting the index" do
    visit vms_url
    assert_selector "h1", text: "Vms"
  end

  test "creating a Vm" do
    visit vms_url
    click_on "New Vm"

    fill_in "Ip", with: @vm.ip
    fill_in "Server", with: @vm.server_id
    fill_in "Status", with: @vm.status
    click_on "Create Vm"

    assert_text "Vm was successfully created"
    click_on "Back"
  end

  test "updating a Vm" do
    visit vms_url
    click_on "Edit", match: :first

    fill_in "Ip", with: @vm.ip
    fill_in "Server", with: @vm.server_id
    fill_in "Status", with: @vm.status
    click_on "Update Vm"

    assert_text "Vm was successfully updated"
    click_on "Back"
  end

  test "destroying a Vm" do
    visit vms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vm was successfully destroyed"
  end
end
