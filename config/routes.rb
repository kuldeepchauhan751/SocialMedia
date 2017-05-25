Rails.application.routes.draw do
              root 'posts#index'
               resources :posts do
               	resources :likes
               	resources :comments do
               		resources :likes
               		resources :replies do
			end
		end
	end
end