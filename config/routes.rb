Rails.application.routes.draw do
	devise_for :users

	post 'sign_up' => 'users#sign_up'
end
