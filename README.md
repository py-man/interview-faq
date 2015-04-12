#FAQ in interviews / Scripting Questions
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

#To generate a large file of random numbers for testing:

  perl -le'print rand>.5?++$a:--$b for 1..10000000' > /tmp/large_numbers_list

#[Screener Questions]

If you Use Docker or Vagrant as above, all the gems will be installed and any requirements will be taken care of, if you want to test from the repo itself, install ruby 1.9.1 or use rvm.

Requirements:

    Ruby 1.9.1
  
    gem install ./flatten/screener-0.0.1.gem 
  
    gem install ./topn/topn-0.0.1.gem
    
    gem install levenshtein
    
    gem install Text
  



#flatten: 

--> flatten an array of arbitrarily nested arrays of integers into a flat array of integers <--
      
      ruby bin/screener

      rake test
      


  
#topn: 

 --> given an arbitrarily large file and a numbe output the largest N numbers, highest first <--

  numbers_list file included

      ruby bin/topn numbers_list

      ./topn.sh numbers_list 10

      rake test

 
 
  
#distance: 

 --> compute pair of adjacent words are only different by 1 character. e.g. dog -> dot -> cot -> cat

  dictionary file included

      ruby distance_match.rb

      ruby distance.rb

      ./distance.sh
