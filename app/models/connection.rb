class Connection < ApplicationRecord
  belongs_to :connecter, class_name: "Entity"
  belongs_to :connected, class_name: "Entity"
end
