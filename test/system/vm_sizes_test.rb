require "application_system_test_case"

class VmSizesTest < ApplicationSystemTestCase
  setup do
    @vm_size = vm_sizes(:one)
  end

  test "visiting the index" do
    visit vm_sizes_url
    assert_selector "h1", text: "Vm Sizes"
  end

  test "creating a Vm size" do
    visit vm_sizes_url
    click_on "New Vm Size"

    fill_in "Cpu Cores", with: @vm_size.cpu_cores
    fill_in "Disk", with: @vm_size.disk
    fill_in "Memory", with: @vm_size.memory
    fill_in "Size Name", with: @vm_size.size_name
    fill_in "Storage", with: @vm_size.storage
    click_on "Create Vm size"

    assert_text "Vm size was successfully created"
    click_on "Back"
  end

  test "updating a Vm size" do
    visit vm_sizes_url
    click_on "Edit", match: :first

    fill_in "Cpu Cores", with: @vm_size.cpu_cores
    fill_in "Disk", with: @vm_size.disk
    fill_in "Memory", with: @vm_size.memory
    fill_in "Size Name", with: @vm_size.size_name
    fill_in "Storage", with: @vm_size.storage
    click_on "Update Vm size"

    assert_text "Vm size was successfully updated"
    click_on "Back"
  end

  test "destroying a Vm size" do
    visit vm_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vm size was successfully destroyed"
  end
end
