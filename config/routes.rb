Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
	use_doorkeeper
	devise_for :users

	post 'sign_up' => 'users#sign_up'
end
