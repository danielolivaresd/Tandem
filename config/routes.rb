Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  scope "/profile" do
    resources :user_languages, path: "languages"
    resources :language_interests, path: "interests"
  end
  root 'static#index'
end
