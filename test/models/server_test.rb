require 'test_helper'

class ServerTest < ActiveSupport::TestCase
  test "server attributes must not be empty" do
    server = Server.new
    assert server.invalid?
    assert server.errors[:ip].any?
    assert server.errors[:server_size_id].any?
    assert server.errors[:sn].any?
    assert server.errors[:os].any?
    assert server.errors[:purchase_time].any?
  end
end
