TrainingApp::Application.routes.draw do

  root :to => "Athletes#index"
  resources :exercises
  resources :myevents
  resources :events
  resources :athletes

end
