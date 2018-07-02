class ServerSize < ApplicationRecord
  has_many :servers

  enum model: {
    "Dell R630" => 0,
    "Dell R730" => 1,
  }
 
  validates :size_name, :model, :cpu, :cpu_cores, :memory, :disk, presence: true
end
