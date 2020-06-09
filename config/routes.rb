Rails.application.routes.draw do
  get 'users/new'
  root to: "main#index"
  get 'bacarratt'     => 'static_pages#bacarratt'
  get 'black_jack'    => 'static_pages#black_jack'
  get 'complites'     => 'static_pages#complites'
  get 'roulette'      => 'atatic_pages#roulette'
  get 'russian_poker' => 'static_pages#russian_poker'
  get 'texas_holdem'  => 'static_pages#texas_holdem'
  get 'main'          => 'main#home'
  get 'select'        => 'static_pages#select'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
