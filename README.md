# An example blog with annotations

## Run the code

You'll need ruby and bundler.

* `git clone git@github.com:rouanw/annotator-demo.git`
* `bundle install`
* `rake db:migrate`
* `rails server`
* Start at [http://localhost:3000/posts](http://localhost:3000/posts)

## Code you care about

* The [JavaScript file](/app/assets/javascripts/posts.js) adding annotator and its plugins
* The [Rails controller](/app/controllers/annotations_controller.rb) that acts as a simple store backend

## Find out more about Annotator

### [annotatorjs.org](http://annotatorjs.org/)
