class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    ## to get the list of poems
    get "/poems" do
      poems = Poem.all.limit(10)
      poems.to_json
    end

end
