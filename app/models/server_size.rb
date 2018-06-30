class ServerSize < ApplicationRecord

  enum model: {
    "Dell R630" => 0,
    "Dell R730" => 1,
  } 
end
