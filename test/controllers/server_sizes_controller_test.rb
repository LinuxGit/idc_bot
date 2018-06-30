require 'test_helper'

class ServerSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server_size = server_sizes(:one)
  end

  test "should get index" do
    get server_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_server_size_url
    assert_response :success
  end

  test "should create server_size" do
    assert_difference('ServerSize.count') do
      post server_sizes_url, params: { server_size: { cpu: @server_size.cpu, cpu_cores: @server_size.cpu_cores, disk: @server_size.disk, memory: @server_size.memory, model: @server_size.model, size_name: @server_size.size_name } }
    end

    assert_redirected_to server_size_url(ServerSize.last)
  end

  test "should show server_size" do
    get server_size_url(@server_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_size_url(@server_size)
    assert_response :success
  end

  test "should update server_size" do
    patch server_size_url(@server_size), params: { server_size: { cpu: @server_size.cpu, cpu_cores: @server_size.cpu_cores, disk: @server_size.disk, memory: @server_size.memory, model: @server_size.model, size_name: @server_size.size_name } }
    assert_redirected_to server_size_url(@server_size)
  end

  test "should destroy server_size" do
    assert_difference('ServerSize.count', -1) do
      delete server_size_url(@server_size)
    end

    assert_redirected_to server_sizes_url
  end
end
