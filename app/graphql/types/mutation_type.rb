require 'mutations/base_mutation'

module Types
  class MutationType < Types::BaseObject
    field :increment_yes_vote, mutation: Mutations::IncrementYesVote
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
