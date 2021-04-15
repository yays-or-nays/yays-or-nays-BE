module Types
  class MutationType < Types::BaseObject
    # field :update_vote, mutation: Mutations::HotTake::UpdateVote
    # field :update_vote, Integer, mutation::Mutations::UpdateVote
    field :update_vote, Integer, null: false
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
