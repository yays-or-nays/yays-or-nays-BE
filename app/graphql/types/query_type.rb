module Types
  class QueryType < Types::BaseObject
    # HotTakes
    field :hot_take_by_category, Types::HotTakeType, null: false do
      argument :tag_id, Integer, required: true
    end

    def hot_take_by_category(tag_id:)
      HotTake.where(tag_id: tag_id).to_a.sample#.hot_takes.sample
    end

    # Tags
    field :tags, [Types::TagType], null:false

    def tags
      Tag.all
    end
  end
end
