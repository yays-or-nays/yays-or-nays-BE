require 'rails_helper'

describe 'Increment yes vote for a hot take' do
  it 'can receive a specific hot take id and increment yes vote by one' do
    tag1 = Tag.create!(category: "Food & Beverage")
    tag2 = Tag.create!(category: "Entertainment")

    hot_take_1 = tag1.hot_takes.create(question: "test 1", picture: "1")
    hot_take_2 = tag1.hot_takes.create(question: "test 2", picture: "1")
    hot_take_3 = tag2.hot_takes.create(question: "test 3", picture: "1")

    headers = { 'Content_Type': 'application/json' }
    
    expect(hot_take_1.yes_vote).to eq(0)

    post '/graphql', headers: headers, params: { query: "mutation{incrementYesVote(input:{id: #{hot_take_1.id}}){clientMutationId}}"}

    expect(HotTake.first.yes_vote).to eq(1)
  end
end
