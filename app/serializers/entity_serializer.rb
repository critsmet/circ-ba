class EntitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :handle, :name, :entity_type, :image_url, :confirmed
  attribute :organizing_events do |entity|
    EventSerializer.new(entity.organizing_events)
  end
  attribute :attending_events do |entity|
    EventSerializer.new(entity.attending_events)
  end
  attribute :hosting_events do |entity|
    EventSerializer.new(entity.hosting_events)
  end
  attribute :subscribers do |entity|
    BriefEntitySerializer.new(entity.subscribers)
  end
  attribute :subscribed do |entity|
    BriefEntitySerializer.new(entity.subscribed)
  end
end
