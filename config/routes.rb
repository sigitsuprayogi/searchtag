Rails.application.routes.draw do

  	root 'public#index'
  	get 'search/'                  => 'public#search'

end
