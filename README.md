# Yays or Nays Backend
<p align="left">
  <a href ="https://ruby-doc.org/">
    <img src="https://img.shields.io/badge/RUBY-2.5.3-957DAD?style=for-the-badge">
  </a>
  &nbsp;
  <a href="https://guides.rubyonrails.org/">
    <img src="https://img.shields.io/badge/RAILS-5.2.4-957DAD?style=for-the-badge">
  </a>
  &nbsp;
</p>

---

<img src="https://i.ibb.co/ZN4qj8k/yaysornays.png" width="180">
<p>Yays or Nays is an app that allows users to yay or nay on images uploaded by other users! What fun!</p>

<br/>

## Installation/Local Setup
To use this project in your local environment, please follow the instructions:

  1. Clone the repository
  2. `cd yays-or-nays-BE`
  3. Install gem packes by running `bundler`. `bundle install` may not work due to Bundler version.
  4. Create database by running `rails db:{create,migrate}`
  5. Launch local server by running `rails s`
  6. `PORT 3000` is being used, so send any requests to `http://localhost:3000/graphql` to fulfill any requests
  7. To run tests and make sure everything is functioning as planned, please run `rspec` OR `bundle exec rspec`.

Take note of Rails and Ruby version. `ruby '2.5.3'` and `rails 5.2.4.5`. If there are any issues, please change your environment to match these Ruby/Rails versions. If running any Bundler based commands is problematic, please change versions to bundler `2.1.4`.

## API Contract
### GraphQL Endpoint
Yays or Nays API is hosted on Heroku with the URL `https://yays-or-nays-be.herokuapp.com/`

### Queries

![Screen Shot 2021-04-17 at 2 52 52 PM](https://user-images.githubusercontent.com/68261312/115126494-98a32a80-9f8c-11eb-870f-dbd8abb13e51.png)

### Mutations

![Screen Shot 2021-04-17 at 2 53 57 PM](https://user-images.githubusercontent.com/68261312/115126509-bf616100-9f8c-11eb-968a-cf044f89d01e.png)

### Contributors
-   Isabelle Villasenor | [github](https://github.com/isabellevillasenor) \| [linkedin](https://www.linkedin.com/in/isabelle-villasenor/)
-   Saundra Catalina | [github](https://github.com/saundracatalina) \| [linkedin](https://www.linkedin.com/in/saundra-catalina/)
-   Sam Yeo | [github](https://github.com/SK-Sam) \| [linkedin](https://www.linkedin.com/in/samuel-horishin-yeo/)