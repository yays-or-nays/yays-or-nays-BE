module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :category, String, null: false
    field :hot_takes, [HotTakeType], null: false
  end
end
