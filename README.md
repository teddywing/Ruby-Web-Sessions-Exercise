Session Exercise
================

This is an exercise designed to help illustrate how sessions can facilitate
authentication on the web. It was written for one of my students at [The
Firehose Project](http://www.thefirehoseproject.com/).

Fill in the route blocks in `app.rb` such that POSTing the accepted user
credentials to '/' log the user in using the session, and display the logged in
template.

With `Rack::Session::Cookie`, the session is accessible via a hash called
`session`.


## Installing
Run

	$ sh setup.sh

to install the required gem dependencies.


## Running
Run

	$ make

to start up the development server and see changes to the app.


## Testing
Run

	$ rake

to run the app's tests.
