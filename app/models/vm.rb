class Vm < ApplicationRecord
  belongs_to :server
  belongs_to :vm_size

  enum status: {
    "provision" => 0,
    "ready" => 1,
    "online" => 2,
    "offline" => 3,
    "tombstone" => 4
  } 
end
