Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get "/contact" => "contacts#contact_method"

    # get "/all_contacts" => "contacts#all_contacts_method"

    #adding 5 restful actions: index, show, create, update, destroy
    get "/contacts" => "contacts#index"

    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"

    patch "/contacts/:id" => "contacts#update"

    delete "/contacts/:id" => "contacts#destroy"

  end
end
