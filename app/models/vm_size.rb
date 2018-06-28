class VmSize < ApplicationRecord

  enum disk: {
    "SAS" => 0,
    "SSD" => 1,
    "NVMe" => 2,
    "Optane" => 3,
  } 
end
