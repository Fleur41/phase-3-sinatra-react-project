# Phase 3 Sinatra-React Project

This is a web application that allows users to keep track of their favorite books. The application is built using Sinatra and React, and it uses a SQLite database.


## Front-end Project Task Management Client

You can use this API in conjunction with my front-end project management app [see the repo](https://github.com/Fleur41/Project-Management-Client)



## Technologies Used in API

- Ruby
- ActiveRecord
- SQLite3
- Rack

# How To Use
To use this application, first clone the repository:
```bash
$ git clone https://github.com/Fleur41/phase-3-sinatra-react-project.git
```
Then, navigate to the project directory and run the following commands:
```bash
$ cd phase-3-sinatra-react-project
$ bundle install
$ npm install

```
# Create migrations with Activerecord
```bash
$ bundle exec rake db:migrate
```
# If you would like to use seed data
```bash
bundle exec rake db:seed
```
# Usage
To start the application, run the following command:
```bash
$ shotgun
```
Then, open a web browser and go to [Local host](http://localhost:9393)

# Projects
You can perform all CRUD operations on the projects database.

# 1. Create a project
To create a new project, navigate to the "New Project" page and enter the required information. Click the "Create Project" button to add the project to the database.
# 2. Retrieve all projects
To retrieve all projects, navigate to the "Projects" page. All projects in the database will be displayed.
# 3. Retrieve an individual project
To retrieve an individual project, click on the project's title on the "Projects" page. This will take you to the project's detail page, which displays all the information about the project.
# 4. Delete a project
To delete a project, navigate to the project's detail page and click the "Delete Project" button. You will be prompted to confirm that you want to delete the project.
# 5. Update a project
To update a project, navigate to the project's detail page and click the "Edit Project" button. You will be taken to the project's edit page, where you can make changes to the project's information. Click the "Update Project" button to save your changes.
 

## Author
Project contributed to by:
 [Simon Muriithi](https://github.com/Fleur41/). Bug reports and pull requests are welcome on GitHub at https://github.com/Fleur41/phase-3-sinatra-react-project.git. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

This project is available as open source under the terms of the MIT License.
[MIT](https://choosealicense.com/licenses/mit/)