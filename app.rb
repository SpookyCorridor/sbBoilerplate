require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'instafake'
)

get '/' do 
	erb :index 
end 

get '/1' do 
	erb :one
end 

get '/2' do 
	erb :two
end 

get '/3' do 
	erb :three
end 

get '/4' do 
	erb :four 
end 

get '/5' do 
	erb :five
end 

get '/6' do 
	erb :six 
end 

get '/7' do 
	erb :seven 
end 

get '/8' do 
	erb :eight
end 

get '/what' do 
	erb :what 
end 

### restful api 

get '/api/instafake' do 
	InstagramModel.all.to_json 
end 

get '/api/instafake/:id' do 
	InstagramModel.find(params[:id]).to_json
end 

post '/api/instafake' do 
	InstagramModel.create(params).to_json
end 

put '/api/instafake/:id' do 
	@id = params[:id]
	@insta = InstagramModel.find(@id)
	@insta.username = params[:username]
	@isnta.post = params[:post]
	@insta.description = params[:description]
	@insta.hashtags = params[:hashtags]
	@insta.save 
	@insta.to_json
end 

patch '/api/instafake/:id' do 
	@id = params[:id]
	@insta = InstagramModel.find(@id)
	@insta.username = params[:username]
	@isnta.post = params[:post]
	@insta.description = params[:description]
	@insta.hashtags = params[:hashtags]
	@insta.save 
	@insta.to_json
end 


delete '/api/instafake/:id' do 
	InstagramModel.destroy(params[:id]).to_json
end 