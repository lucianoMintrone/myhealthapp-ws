Rails.application.routes.draw do
	use_doorkeeper
	devise_for :users

	post 'sign_up' => 'users#sign_up'
end
