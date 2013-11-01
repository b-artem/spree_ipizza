Spree::Core::Engine.routes.draw do
  namespace :gateway do
    post '/banklink/success'   => 'ipizza#success', :as => :ipizza_success
    post '/banklink/failure'   => 'ipizza#failure', :as => :ipizza_failure
    get  '/banklink/:order_id' => 'ipizza#show',    :as => :ipizza, :constraints => 'R(\d{9})$'
  end
end
