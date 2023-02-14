# rails-7-api-starter

##### Rails 7 API Starter with user Devise-Api Auth and just enough essential configuration options, with UUId's/RSpec, as api/v1

- Leaving other options open to individual preference.

##### Set Devise primary model

After setting devise model (rails g devise Model/User/Account) add the :api module to the created model [https://github.com/nejdetkadir/devise-api] and any other options needed.

Example controller with standard and restricted methods

skip_before_action :verify_authenticity_token, raise: false
before_action :authenticate_devise_api_token!, only: [:restricted]
def home
end

def restricted
devise_api_token = current_devise_api_token
if devise_api_token
render json: { message: "You are logged in as #{devise_api_token.resource_owner.email}" }, status: :ok
else
render json: { message: 'You are not logged in' }, status: :unauthorized
end
end

###### RSpec

- Configured with RSpec and generators, FactoryBot

* Ruby version
  3.1.2

Deployment instructions, setup

- rails db:create
- rails g devise Model - check/adjust migrations
- rails db:migrate
- Place :api module in relevent model
- Set controller code for restricted, example above, with your controller in api/v1

- Build API!
