Rails.application.routes.draw do
  get 'main/home'
  get 'main/index'
  root to: "main#index"
  get 'bacarratt'     => 'static_pages/bacarratt'
  get 'black_jack'    => 'static_pages/black_jack'
  get 'complites'     => 'static_pages/complites'
  get 'roulette'      => 'atatic_pages/roulette'
  get 'russian_poker' => 'static_pages/russian_poker'
  get 'texas_holdem'  => 'static_pages/texas_holdem'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
