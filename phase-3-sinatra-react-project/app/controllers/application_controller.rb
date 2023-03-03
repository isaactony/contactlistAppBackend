class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    contacts = Contact.all
    contacts.to_json()

  end
  get '/contacts/:id' do
    contacts = Contact.find(params[:id])
    
    contacts.to_json(only: [:id, :name, :phone, :email_id])

  end

  get '/contacts/:name' do
    contacts = Contact.find(params[:id])
    
    contacts.to_json(only: [:id, :name, :phone, :email_id])

  end

  delete '/contacts/:id' do
    contacts = Contact.find(params[:id])   
    contacts.destroy
    contacts.to_json
  end

  post '/contacts' do
    contact = Contact.create(
      name: params[:name],
      phone: params[:phone],
      email_id: params[:email_id]

    )
    contact.to_json
  end

  patch '/contacts/:id' do
      contact = Contact.find(params[:id])
      contact.update(
          name: params[:name],
          phone: params[:phone],
          email_id: params[:email_id]

      )
      contact.to_json
    end

    get '/groups' do
      groups = Group.all
      groups.to_json()
    end

    get '/groups/:id' do
      groups = Group.find(params[:id])
      groups.to_json(include: :contacts)
    end

  
end
