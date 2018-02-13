Rails.application.routes.draw do
  resources :articles
  devise_for :admin_users, ActiveAdmin::Devise.config  do 
  	resources :articles
  end
  ActiveAdmin.routes(self)
  devise_for :employees
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# namespace :admin
# resources :articles
# end
namespace :admin do 

resources :articles
end 

resources :articles , only: [:index , :show]

get 'employees/root'

root 'employees#root'

end
