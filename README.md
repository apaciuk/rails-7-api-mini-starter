# rails-7-api-starter

##### Rails 7 API Starter with the latest Devise-Api Auth preconfigured with just enough essential configuration options, with UUId's/RSpec and a basic ApplicationService, as api/v1

- Leaving all other options open to individual preference, ie Pundit, Knock, Bullet, and and other extras required.

##### Devise primary User model

Typical basic User model set up [https://github.com/nejdetkadir/devise-api] [https://github.com/heartcombo/devise] and add any other options needed.

###### RSpec/Services

- Configured with RSpec and generators, FactoryBot, CORs and base ApplicationService

* Ruby version
  3.1.2

Deployment instructions, setup

- rails db:create
- rails db:migrate

* Server

- rails s -p 3000 (or other)

- Build API!

###### Check user auth/routes

- User routes

new_user_session GET /api/v1/users/sign_in(.:format) devise/sessions#new
user_session POST /api/v1/users/sign_in(.:format) devise/sessions#create
destroy_user_session DELETE /api/v1/users/sign_out(.:format) devise/sessions#destroy
new_user_password GET /api/v1/users/password/new(.:format) devise/passwords#new
edit_user_password GET /api/v1/users/password/edit(.:format) devise/passwords#edit
user_password PATCH /api/v1/users/password(.:format) devise/passwords#update
PUT /api/v1/users/password(.:format) devise/passwords#update
POST /api/v1/users/password(.:format) devise/passwords#create
cancel_user_registration GET /api/v1/users/cancel(.:format) devise/registrations#cancel
new_user_registration GET /api/v1/users/sign_up(.:format) devise/registrations#new
edit_user_registration GET /api/v1/users/edit(.:format) devise/registrations#edit
user_registration PATCH /api/v1/users(.:format) devise/registrations#update
PUT /api/v1/users(.:format) devise/registrations#update
DELETE /api/v1/users(.:format) devise/registrations#destroy
POST /api/v1/users(.:format) devise/registrations#create

- User Registration - to localhost:3000/api/v1/users/
  (Postman/Rest client as raw JSON)

{
"user":
{
"email": "useremail.com",
"password": "userpassword&65"
}
}

- User Sign/Log in - to localhost:3000/api/v1/users/sign_in

{
"email": "useremail.com",
"password": "userpassword&65"
"password_confirmation": "userpassword&65"
}

- Pages routes

pages_home GET /api/v1/pages/home(.:format) pages#home
pages_restricted GET /api/v1/pages/restricted(.:format) pages#restricted

- Todo fix user sign-out
