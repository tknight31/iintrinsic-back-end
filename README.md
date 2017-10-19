# iintrinsic Back End API
Rails API for iintrinsic - A location-based social network designed to connect people with different skillsets together to create projects
* Manages relationships, provides data and authenticates users to React front end ([repo](https://github.com/tknight31/iintrinsic-front-end))
* View live site [here](https://iintrinsic-app.herokuapp.com/) (may take Heroku a moment to wake up)

## Features
* Authorizes users on all API calls
* ActiveRecord associations maintain relationships between users, projects and skills.
* Utilizes serializers to provide more efficient data
* [PostreSQL](https://www.postgresql.org/) database stores basic user info, projects, skills and relationships

## Getting Started
To get a copy of the project up and running on your local machine, clone this repo, install the gems specified, initialize a database, and run the migrations.

### Requirements

This template currently works with:

* Rails 5.1.4
* PostgreSQL
