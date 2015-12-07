#MusicTree

MusicTree is a client for the [Discogs API](https://www.discogs.com/developers/) that provides a clean, easy-to-use interface to interact with Discogs and obtain information from their music archives.  Users can search an artist in the database and instantly view their discography.  MusicTree was an experiment.  Built over the course of four days, it challenged me to learn Angular.js and put it to use in the creation of a small app.

![Screenshot](https://github.com/alookatommorow/music-tree/blob/master/public/musictreescreen.png)

##Technology

Music Tree was built in [Ruby on Rails](rubyonrails.org) as the back end and [Angular.js](https://angularjs.org/) as the front end framework.  [Bootstrap](http://getbootstrap.com/) helps it look nice.  Music Tree is tested using [RSpec](http://rspec.info/) and [Capybara](https://github.com/jnicklas/capybara).

##Explore

If you would like to explore the code on your local machine, you will need to obtain your own tokens to access the Discogs API.  Go [here](http://www.discogs.com/developers/) and click "Create an App."" Once you obtain your tokens, you will need to store it in a secure place where the app can access it. One option for doing that is described [here](https://github.com/bkeepers/dotenv).  Once you have an access token do the following:

Clone the repo from your command line:

`git clone https://github.com/alookatommorow/music-tree.git`

Navigate to the music-tree folder.

Bundle install:

`bundle install`

Start the Rails server

`rails s`

Open your browser and navigate to localhost:3000/

##Code Sample

The search controller employs Angular's [$http](https://docs.angularjs.org/api/ng/service/$http) service for executing the search:

```javascript
app.controller('SearchController', function($http){
  this.results = [];
  this.query = "";
  this.specs = "";
  var that = this;
  this.submit = function() {
      $http.post('/search', {query: this.query, specs: this.specs}).success(function(response) {
          that.results = [];
          for (var i = 0, x=response.results.length; i < x; i++) {
              that.results.push(response.results[i]);
          };
      });
      this.query = "";
      this.specs = "";
  };
});
```

Though I did not make use of Angular's powerful two-way data binding (and countless other of its features), creation of this app made it evident that Angular is a top-notch JavaScript framework and one I would like to work more with in the future.  Next, I plan to rework this app using [React](https://facebook.github.io/react/) in Music Tree 2.0.
