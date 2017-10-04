Rails.application.routes.draw do
  resources :items, only: [:index, :create] do
    member do
      post :mark_done
    end
  end
  root "items#index"
end
