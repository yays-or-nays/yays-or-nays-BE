require 'rails_helper'

describe 'receive fe request for hot takes per category' do
  it 'receive fe request for all hot takes per categories' do
    tag1 = Tag.create!(category: "Food & Beverage")
    tag2 = Tag.create!(category: "Entertainment")

    hot_take_1 = tag1.hot_takes.create(question: "test 1", picture: "1")
    hot_take_2 = tag1.hot_takes.create(question: "test 2", picture: "1")
    hot_take_3 = tag2.hot_takes.create(question: "test 3", picture: "1")

    headers = { 'Content_Type': 'application/json' }
    
    post '/graphql', headers: headers, params: { "query": "{hotTakeByCategory(tagId: #{tag2.id}){id question}}"}

    
    expected_response = {
                data: {
                  hotTakeByCategory: 
                    {
                      id: "#{hot_take_3.id}",
                      question: hot_take_3.question
                    }
                }
              }
    hot_take_query_response = expected_response[:data][:hotTakeByCategory]
              
    json_response = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(response.status).to eq(200)
    expect(hot_take_query_response).to eq(json_response[:hotTakeByCategory])
  end
end
