# Contact List App - Backend
This is the backend part of the Contact List App. It's built using Ruby and Sinatra and provides RESTful API endpoints for managing contacts and groups.
You can find the front end here https://github.com/isaactony/contactAppReactFrontEnd

# Installation
- Install Ruby version 2.7.0 or higher
- Install Bundler by running gem install bundler
- Clone this repository
- Run bundle install to install dependencies

# Database Setup
- Install SQLite database
- Create a database called contact_list
- Run bundle exec rake db:migrate to create the database schema
- (Optional) Run bundle exec rake db:seed to seed the database with sample data

# Running the App
- Run bundle exec rackup to start the server
- The app will be available at http://localhost:9292

 
# The app has the following endpoints:

```
GET /contacts
Returns a list of all contacts.

GET /contacts/:id
Returns a single contact with the specified ID.

POST /contacts
Creates a new contact. The request body should be in JSON format and include the following properties: name, phone, email, and group_id.

PUT /contacts/:id
Updates an existing contact with the specified ID. The request body should be in JSON format and include the properties you wish to update.

DELETE /contacts/:id
Deletes the contact with the specified ID.

GET /groups
Returns a list of all groups.

GET /groups/:id
Returns a single group with the specified ID.

POST /groups
Creates a new group. The request body should be in JSON format and include the following properties: name.

PUT /groups/:id
Updates an existing group with the specified ID. The request body should be in JSON format and include the properties you wish to update.

DELETE /groups/:id
Deletes the group with the specified ID.

``

# Built With
- Ruby
- Sinatra
- SQLITE

# Developer
- Isaac TOnyloi
# Acknowledgments
- Sinatra Documentation
- SQLite Documentation



