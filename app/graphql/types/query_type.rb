module Types
  class QueryType < Types::BaseObject
    # HotTakes
    field :hot_takes, [Types::HotTakeType], null: false

    def hot_takes
      HotTake.all.to_a.sample(10)
    end

    field :hot_take, Types::HotTakeType, null: false do
      argument :id, ID, required: true
    end

    def hot_take(id:)
      HotTake.find(id)
    end

    # Tags
    field :tags, [Types::TagType], null:false

    def tags
      Tag.all
    end

    field :tag, Types::TagType, null: false do
      argument :category, String, required: true
    end

    def tag(category:)
      Tag.find_by(category: category)
    end
  end
end
