module Mutations
  class IncrementNoVote < Mutations::BaseMutation
    graphql_name 'increment_no_vote'
    description 'Increment No Vote'
    # arguments passed to the `resolve` method
    argument :id, Int, required: true
    
    def resolve(id:)
      hot_take = HotTake.find(id)
      hot_take_no_vote = hot_take.no_vote
      if hot_take.update!(no_vote: hot_take_no_vote + 1)
        { status: "No Vote incremented successfully" }
      else
        { errors: hot_take.errors.full_messages }
      end
    end
  end
end
