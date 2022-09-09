class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  ##GET METHODS
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ## to get the list of poems
  get "/poems" do
    poems = Poem.all.limit(10)
    poems.to_json
  end

  get "/authors" do
    author = Author.all
    author.to_json(include: :poems)
  end

  get "/genres/:id" do
    genre = Genre.find(params[:id])
    genre.to_json(include: :poems)
  end

  ##POST METHODS

  post "/poems" do
    new_poem= Poem.create(
      title: params[:title],
      content: params[:content],
      likes: params[:likes],
      author_id: params[:author_id],
      genre_id: params[:genre_id]
    )
    new_poem.to_json
  end



end
