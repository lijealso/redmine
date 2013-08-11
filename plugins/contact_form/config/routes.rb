if Rails::VERSION::MAJOR < 3

    ActionController::Routing::Routes.draw do |map|
        map.connect('contacte/preview', :controller => 'contact_form', :action => 'preview')
        map.connect('contacte/mail/:id', :controller => 'contact_form', :action => 'mail')
        map.connect('contacte/:id', :controller => 'contact_form', :action => 'index')
        map.connect('contacte', :controller => 'contact_form', :action => 'index')
        map.connect('settings/contacte', :controller => 'contact_form', :action => 'settings')
    end

else

    match 'contacte/preview', :to => 'contact_form#preview'
    match 'contacte/mail/:id', :to => 'contact_form#mail'
    match 'contacte/mail', :to => 'contact_form#mail'
    match 'contacte/:id', :to => 'contact_form#index'
    match 'contacte', :to => 'contact_form#index'
    match 'settings/contacte', :to => 'contact_form#settings'

end
