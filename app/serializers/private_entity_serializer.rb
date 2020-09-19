class PrivateEntitySerializer
  include FastJsonapi::ObjectSerializer
  set_type :entity
  attributes :handle, :name, :entity_type, :email, :confirmed
end
