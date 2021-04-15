module Mutations
  # module HotTake
    # class UpdateVote < ::Mutations::BaseMutation
    class UpdateVote < GraphQL::Schema::Mutation
      # arguments passed to the `resolve` method
      argument :id, Integer, required: true
      argument :yes_vote, Integer, required: false
      # argument :yesVote, Integer, required: true
      argument :no_vote, Integer, required: false
      # argument :noVote, Integer, required: true

      # return type from the mutation
      type Types::HotTakeType

      # def resolve(id:, yesVote:, noVote:)
      # def resolve(id:, yes_vote:, no_vote:)
      def resolve(id:)
        hot_take = HotTake.find!(id)
        hot_take_yes_vote = hot_take.yes_vote
        hot_take_no_vote = hot_take.no_vote
        hot_take.update!(yes_vote: hot_take_yes_vote += 1)
        hot_take.update!(no_vote: hot_take_no_vote += 1)
      end
    end
  # end
end
