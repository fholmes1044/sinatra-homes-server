class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    #{ message: "Getting Homes" }.to_json
    homes = Home.all
    homes.to_json
  end

end
