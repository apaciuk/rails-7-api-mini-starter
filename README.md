# rails-7-api-starter

##### Rails 7 API Starter with user Devise-Api Auth and just enough essential configuration options.

- Leaving other options open to individual preference.

After setting devise model (rails g devise Model) add the :api module to the model [https://github.com/nejdetkadir/devise-api]

Example controller with standard and restricted methods

skip_before_action :verify_authenticity_token, raise: false
before_action :authenticate_devise_api_token!, only: [:restricted]
def home
end

# /pages/restricted

def restricted
devise_api_token = current_devise_api_token
if devise_api_token
render json: { message: "You are logged in as #{devise_api_token.resource_owner.email}" }, status: :ok
else
render json: { message: 'You are not logged in' }, status: :unauthorized
end
end

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions
