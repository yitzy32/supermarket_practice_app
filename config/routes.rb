Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/items" => "items#index"
    get "/items/:id" => "items#show"
    post "/items" => "items#create"
    delete "/items/:id" => "items#destroy"
  end
end
