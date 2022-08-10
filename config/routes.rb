Rails.application.routes.draw do
  # Restaurants actions a user can do
  resources :restaurants, only: %i[index new create show] do
    # Reviews actions a user can do
    resources :reviews, only: %i[new create]
  end
end
