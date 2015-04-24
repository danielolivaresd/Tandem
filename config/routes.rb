Rails.application.routes.draw do
  get 'match_language/new'

  get 'match_language/create'

  devise_for :users, controllers: {registrations: "users/registrations"}
  scope "/profile" do
    resources :user_languages, path: "languages"
    resources :language_interests, path: "interests"
    resources :matches
  end
  root 'static#index'
end
