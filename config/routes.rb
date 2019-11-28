# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { :format => :json } do
    namespace :v1 do
      resources :pikamon_wilds, only: [], :param => :pikamon_wild_id do
        collection do
          get :nearby
        end

        member do
          post :catch
        end
      end
    end
  end
end
