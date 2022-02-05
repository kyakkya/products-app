Rails.application.routes.draw do
  root to: 'static_pages#index'
  resources :user_posts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ## 開発環境用letter_opener
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

