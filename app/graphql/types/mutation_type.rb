require 'mutations/base_mutation'

module Types
  class MutationType < Types::BaseObject
    field :increment_yes_vote, mutation: Mutations::IncrementYesVote
    field :increment_no_vote, mutation: Mutations::IncrementNoVote
  end
end
