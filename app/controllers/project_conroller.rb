class ProjectController < Sinatra::Base
    set :default_content_type, 'application/json'
    # Projects
    get '/projects' do 
        projects = Project.all.order(created_at: :asc)
        projects.to_json
      end
      post '/projects' do
        project = Project.create(
          name: params[:name],
          title: params[:title],
          description: params[:description]
        )
        project.to_json
      end
      patch '/projects/:id' do
        project = Project.find(params[:id])
        project.update(
          name: params[:name],
          title: params[:title],
          description: params[:description]
        )
        project.to_json
      end
    
      delete '/projects/:id' do
        project = Project.find(params[:id])
        project.destroy
        project.to_json
      end
end