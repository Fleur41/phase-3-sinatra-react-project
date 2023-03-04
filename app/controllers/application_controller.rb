class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/' do
    project_task = Project_task.all
    project_task.to_json
  end
  get '/users' do 
    user = User.all
    user.to_json
  end
  get "/user/project_tasks/:id" do
    project_task = User.find(params[:id]).project_tasks
    project_task.to_json
  end
  get "/user/project_tasks/:id/:date" do
    # project_task = User.find(params[:id]).project_tasks
    project_task = Project_task.where(date: params[:date], user_id: params[:id]).to_json
    # puts params[:date]
    project_task.to_json
  end
  get "/project_tasks/:id" do
    project_task = Project_task.find(params[:id])
    project_task.to_json
  end
  get "/user/:id/project_tasks/:completion_status" do
  #   project_task = User.find(params[:id])
    project_task = Project_task.where(completion_status: params[:completion_status], user_id: params[:id]).to_json
    project_task.to_json
  end

  patch "/project_tasks/:id" do
    project_task = Project_task.find(params[:id])
    project_task.update(
      completion_status: params[:completion_status]
    )
    project_task.to_json
  end
  post "/project_tasks" do
    project_task = Project_task.create(
      name: params[:name],
      description: params[:description],
      completion_status: params[:completion_status],
      user_id: params[:user_id],
      due_date: params[:due_date]
    )
    project_task.to_json
  end
  post '/login' do 
    user = User.find_by(
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end


end
