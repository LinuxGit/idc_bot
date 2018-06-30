class ServerSize < ApplicationRecord
  has_many :servers

  enum model: {
    "Dell R630" => 0,
    "Dell R730" => 1,
  } 
end
