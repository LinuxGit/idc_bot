require "application_system_test_case"

class ServerSizesTest < ApplicationSystemTestCase
  setup do
    @server_size = server_sizes(:one)
  end

  test "visiting the index" do
    visit server_sizes_url
    assert_selector "h1", text: "Server Sizes"
  end

  test "creating a Server size" do
    visit server_sizes_url
    click_on "New Server Size"

    fill_in "Cpu", with: @server_size.cpu
    fill_in "Cpu Cores", with: @server_size.cpu_cores
    fill_in "Disk", with: @server_size.disk
    fill_in "Memory", with: @server_size.memory
    fill_in "Model", with: @server_size.model
    fill_in "Size Name", with: @server_size.size_name
    click_on "Create Server size"

    assert_text "Server size was successfully created"
    click_on "Back"
  end

  test "updating a Server size" do
    visit server_sizes_url
    click_on "Edit", match: :first

    fill_in "Cpu", with: @server_size.cpu
    fill_in "Cpu Cores", with: @server_size.cpu_cores
    fill_in "Disk", with: @server_size.disk
    fill_in "Memory", with: @server_size.memory
    fill_in "Model", with: @server_size.model
    fill_in "Size Name", with: @server_size.size_name
    click_on "Update Server size"

    assert_text "Server size was successfully updated"
    click_on "Back"
  end

  test "destroying a Server size" do
    visit server_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Server size was successfully destroyed"
  end
end
