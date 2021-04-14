class HelloController < ApplicationController
  def hello
    render json: {error: "Hello"}
  end
end