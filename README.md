# Ora activity stream

The only purpose of this gem is to serve as a code exercise for [ORA](http://orahq.com) (Auckland, New Zealand)

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM)
* [Bower](http://bower.io/)
* [Ember CLI](http://www.ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)
* [Ruby on Rails](http://rubyonrails.org/)

## Installation

You can then clone this repo

    $ git clone git@github.com:htatche/ember-activity-stream.git
    
Install the dependencies

    $ npm install && bundle install

Create the database schema

    $ rake db:migrate
    
And run !

    $ rails s

## Usage

Although there is a built-in node http server that can mock some of the requests, it is better to run the application from the back-end, by launching ```rails s``` as I mentioned above.

You can also add some seed random data

    $ rake db:seed


## Testing

Clone the repo and run rspec

Server side tests can be run with RSpec

    $ rsepc
    
Front end tests can be run using ember-cli (this will also launch an instance of Chrome)

    $ cd frontend
    $ ember-cli test --server



## Contributing

1. Fork it ( https://github.com/[my-github-username]/kangoroo_robot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request