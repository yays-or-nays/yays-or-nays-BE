module Mutations
  class IncrementYesVote < Mutations::BaseMutation
    graphql_name 'increment_yes_vote'
    description 'Increment Yes Vote'
    # arguments passed to the `resolve` method
    argument :id, Int, required: true
    
    def resolve(id:)
      hot_take = HotTake.find(id)
      hot_take_yes_vote = hot_take.yes_vote
      if hot_take.update!(yes_vote: hot_take_yes_vote + 1)
        {
          #hot_take: hot_take,
          errors: []
        }
      else
        {
          errors: hot_take.errors.full_messages
        }
      end
    end
  end
end
