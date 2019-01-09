Rails.application.routes.draw do
  resources :lps
  resources :artists do
    member do
      get "lps" => "artists#lps"
    end
  end

	root to: "home#index"
end
