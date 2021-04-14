require 'rails_helper'

describe 'receive fe request' do
  it 'receive fe request for all categories & return response with all' do
    # post "/graphql", params:'query{
    #                           tags{
    #                             category
    #                             }
    #                           }'
    tag1 = Tag.create!(category: "Food & Beverage")
    tag2 = Tag.create!(category: "Entertainment")
    tag3 = Tag.create!(category: "Software Development")
    post "/graphql", params: { query: query(category: tag1.category) }

    json_response = {
                "data": {
                  "tags": [
                    {
                      "category": "Food & Beverage"
                    },
                    {
                      "category": "Entertainment"
                    },
                    {
                      "category": "Software Development"
                    }
                  ]
                }
              }
    categories = json_response[:data][:tags]
    require "pry"; binding.pry
    expect(response.status).to eq(200)
    # expect(response.body)to eq(categories[0][:category])

    # expect(categories[0][:category]).to eq("Food & Beverage")
    # expect(categories[1][:category]).to eq("Entertainment")
    # expect(categories[2][:category]).to eq("Software Development")
    # post "/widgets", params: '{ "widget": { "name":"My Widget" } }'
  end
end
