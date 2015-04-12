# interview-faq -FAQ in interviews / Scripting 
To test the below you may use the included vagrant file:

This will build ubuntu 14.04 and install ruby 1.91 and all the required Gems
  
  (assuming you have vagrant and virtualbox installed)
  
    vagrant up
    
    vagrant ssh screener

To Test against a Docker container:

  (assuming you have Docker installed)

    docker build -t screener .

    docker run -d -t -i -h screener --name screener screener bash

    docker exec -it screener bash 

#To generate a large file of random number for testing:

  perl -le'print rand>.5?++$a:--$b for 1..10000000' > /tmp/large_numbers_list

#[Screener Questions]

Requirements:

  Ruby 1.9.1

  gem install ./flatten/screener-0.0.1.gem 

  gem install ./topn/topn-0.0.1.gem

  flatten:

    ruby bin/screener

    rake test

  topn: 

    numbers_list file included

    ruby bin/topn numbers_list

    ./topn.sh numbers_list 10

    rake test

  distance:

    dictionary file included

    ruby distance_match.rb

    ruby distance.rb

    ./distance.sh



