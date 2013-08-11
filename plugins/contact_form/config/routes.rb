if Rails::VERSION::MAJOR < 3

    ActionController::Routing::Routes.draw do |map|
        map.connect('contact/preview', :controller => 'contact_form', :action => 'preview')
        map.connect('contact/mail/:id', :controller => 'contact_form', :action => 'mail')
        map.connect('contact/:id', :controller => 'contact_form', :action => 'index')
        map.connect('contact', :controller => 'contact_form', :action => 'index')
        map.connect('settings/contact', :controller => 'contact_form', :action => 'settings')
    end

else

    match 'contact/preview', :to => 'contact_form#preview'
    match 'contact/mail/:id', :to => 'contact_form#mail'
    match 'contact/mail', :to => 'contact_form#mail'
    match 'contact/:id', :to => 'contact_form#index'
    match 'contact', :to => 'contact_form#index'
    match 'settings/contact', :to => 'contact_form#settings'

end
