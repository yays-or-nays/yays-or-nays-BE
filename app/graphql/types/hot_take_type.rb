module Types
  class HotTakeType < Types::BaseObject
    field :id, ID, null: false
    field :question, String, null: false
    field :picture, String, null: false
    field :yes_vote, Integer, null: false
    field :no_vote, Integer, null: false
    field :tag_id, ID, null: false
    #field :tag, [Tag], null: false
    field :tag, TagType.connection_type, null: false

    # def yes_vote_count
    #   object.yes_vote
    # end
  end
end
