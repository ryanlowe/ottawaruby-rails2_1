ActionController::Routing::Routes.draw do |map|
  map.resources :items


  #site
  map.with_options :controller => "site" do |site|
    site.connect '/boom',    :action => 'boom'
    site.front   '/',        :action => 'front'
  end
  
end
