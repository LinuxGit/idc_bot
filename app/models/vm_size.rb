class VmSize < ApplicationRecord
  has_many :vms

  enum disk: {
    "SAS" => 0,
    "SSD" => 1,
    "NVMe" => 2,
    "Optane" => 3,
  }

  validates :size_name, :cpu_cores, :memory, :storage, :disk, presence: true
end
