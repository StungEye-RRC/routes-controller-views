Rails.application.routes.draw do
  get 'index' => 'home#index'
# ^ HTTP VERB
  get 'about' => 'home#about'
     # ^ URL PATH ^ controller#action

  get 'goats/(:number/size/:size)' => 'home#goats',
      constraints: { number: /\d+/, size: /\d+/ },
      as: 'goats'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
