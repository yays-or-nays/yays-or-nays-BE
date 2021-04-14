Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: "graphql#execute"
  end
  get "/", to: "hello#hello"
  post "/graphql", to: "graphql#execute"
end
