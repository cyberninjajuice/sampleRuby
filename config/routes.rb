Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/help'

  root "application#home"
  get "/contact" => "application#contact"
  get "/about" => "application#about"
  get "/help" => "application#help"
end
