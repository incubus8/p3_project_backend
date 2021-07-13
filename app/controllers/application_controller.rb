class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  get '/pet_posts' do
    # pet_posts = PetPost.all
    # {message: PetPost.all}.to_json
      PetPost.all.to_json
      # (:include =>:comments)
    # {message: "hello world"}.to_json
  end

  get '/pet_posts/:id/comments' do
    post = PetPost.find(params[:id])
    post.comments.to_json
  end
  # method "URL" do
    
  patch '/pet_posts/:id' do
    post = PetPost.find(params[:id])
    post.likes = params[:likes]
    post.save
    post.to_json
  end

  post '/pet_posts' do
    post = PetPost.create
    post.to_json
  end
end
