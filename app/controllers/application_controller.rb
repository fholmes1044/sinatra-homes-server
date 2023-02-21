class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/hosts" do
    hosts = Host.all
    hosts.to_json
  end

  # post '/hosts/:id/homes' do 
  #   home = home.create(
  #     body: params[:body],
  #     home: params[:home]
  #   )
  #   home.to_json
  # end
  
  # patch '/hosts/:id/homes' do
  #   home= Home.find(params[:id])
  #   home.update(
  #     body: params[:body]
  #   )
  #   home.to_json
  # end

  # delete "/hosts/:id/homes" do
  #   home = Home.find(params[:id])
  #   home.destroy
  # end
end
