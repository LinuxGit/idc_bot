require 'test_helper'

class VmSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vm_size = vm_sizes(:one)
  end

  test "should get index" do
    get vm_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_vm_size_url
    assert_response :success
  end

  test "should create vm_size" do
    assert_difference('VmSize.count') do
      post vm_sizes_url, params: { vm_size: { cpu_cores: @vm_size.cpu_cores, disk: @vm_size.disk, memory: @vm_size.memory, size_name: @vm_size.size_name, storage: @vm_size.storage } }
    end

    assert_redirected_to vm_size_url(VmSize.last)
  end

  test "should show vm_size" do
    get vm_size_url(@vm_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_vm_size_url(@vm_size)
    assert_response :success
  end

  test "should update vm_size" do
    patch vm_size_url(@vm_size), params: { vm_size: { cpu_cores: @vm_size.cpu_cores, disk: @vm_size.disk, memory: @vm_size.memory, size_name: @vm_size.size_name, storage: @vm_size.storage } }
    assert_redirected_to vm_size_url(@vm_size)
  end

  test "should destroy vm_size" do
    assert_difference('VmSize.count', -1) do
      delete vm_size_url(@vm_size)
    end

    assert_redirected_to vm_sizes_url
  end
end
