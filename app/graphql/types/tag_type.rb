module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :category, String, null: false
    field :hot_takes, [HotTakeType], null: false

    def hot_takes
      AssociationLoader.for(object.class, :hot_takes).load(object)
    end
  end
end
