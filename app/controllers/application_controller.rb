class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/' do
    task = Task.all
    task.to_json
  end
  get '/users' do 
    user = User.all
    user.to_json
  end
  get "/user/tasks/:id" do
    task = User.find(params[:id]).tasks
    task.to_json
  end
  get "/user/tasks/:id/:date" do
    # task = User.find(params[:id]).tasks
    task = Task.where(date: params[:date], user_id: params[:id]).to_json
    # puts params[:date]
    task.to_json
  end
  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end
  get "/user/:id/tasks/:completion_status" do
  #   task = User.find(params[:id])
    task = Task.where(completion_status: params[:completion_status], user_id: params[:id]).to_json
    task.to_json
  end

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(
      completion_status: params[:completion_status]
    )
    task.to_json
  end
  post "/tasks" do
    task = Task.create(
      name: params[:name],
      description: params[:description],
      completion_status: params[:completion_status],
      user_id: params[:user_id],
      due_date: params[:due_date]
    )
    task.to_json
  end
  post '/login' do 
    user = User.find_by(
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end


end