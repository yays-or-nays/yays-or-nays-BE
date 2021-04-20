require 'rails_helper'

describe 'receive fe request' do
  it 'receive fe request for all categories & return response with all' do
    tag1 = Tag.create!(category: "Food & Beverage")
    tag2 = Tag.create!(category: "Entertainment")
    tag3 = Tag.create!(category: "Software Development")

    headers = { 'Content_Type': 'application/json' }
    
    post '/graphql', headers: headers, params: { "query": "{tags{category}}"}

    
    expected_response = {
                data: {
                  tags: [
                    {
                      category: "Food & Beverage"
                    },
                    {
                      category: "Entertainment"
                    },
                    {
                      category: "Software Development"
                    }
                  ]
                }
              }
    categories = expected_response[:data][:tags]
              
    json_response = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(response.status).to eq(200)
 
    expect(categories).to eq(json_response[:tags])
  end
end
