class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/hosts" do
    hosts = Host.all
    hosts.to_json(include: :homes)
  end


  post '/homes' do 
    home = Home.create(
      title: params[:title],
      location: params[:location],
      category: params[:category],
      description: params[:description],
      price: params[:price],
      guest_capacity: params[:guest_capacity],
      host_id: params[:host_id]
    ) 
    home.to_json
  end

  post '/hosts' do
    host = Host.create(
      full_name: params[:full_name],
      email: params[:email],
      phone_number: params[:phone],
      address: params[:address],
      verified: params[:verified]
    )

    host.to_json
  end
 
  # patch '/homes/:id' do
  #   home= Home.find(params[:id])
  #   # home.update(
  #   #   body: params[:body]
  #   # )
  #   home.to_json
  # end

  delete "/homes/:id" do
     home = Home.find(params[:id])
     home.destroy
  end
end
