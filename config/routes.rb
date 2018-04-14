Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parser/index'
  get 'parser/scraperbash'
  get 'parser/scraperarduino'
  get 'parser/scraperyaplakal'
  get 'parser/thenextweb'
  root 'parser#index'
end
