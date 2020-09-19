class BriefEntitySerializer
  include FastJsonapi::ObjectSerializer
  set_type :entity
  attributes :handle, :name, :entity_type, :image_url
end
