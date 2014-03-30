# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{:title => 'Aladdin', :rating => 'G', :release_date => '25-Nov-1992', :director => 'Ron Clements, John Musker', :description => 'Aladdin, a street urchin, accidentally meets Princess Jasmine, who is in the city undercover. They love each other, but she can only marry a prince.'},
    	  {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1984', :director => 'James Cameron', :description => 'A human-looking indestructible cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.'},
    	  {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989', :director => 'Rob Reiner', :description => 'Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.'},
      	  {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011', :director => 'Tate Taylor', :description => 'An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African-American maids point of view on the white families for which they work, and the hardships they go through on a daily basis.'},
      	  {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001', :director => 'Lasse Hallstrom', :description => 'A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community.'},
      	  {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001', :director => 'Jean-Pierre Jeunet', :description => 'Amelie, an innocent and naive girl in Paris, with her own sense of justice, decides to help those around her and along the way, discovers love.'},
      	  {:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968', :director => 'Stanley Kubrick', :description => 'Humanity finds a mysterious, obviously artificial, object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.'},
      	  {:title => 'The Incredibles', :rating => 'PG', :release_date => '5-Nov-2004', :director => 'Brad Bird', :description => 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.'},
      	  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981', :director => 'Steven Spielberg', :description => 'Archeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'},
      	  {:title => 'Chicken Run', :rating => 'G', :release_date => '21-Jun-2000', :director => 'Peter Lord, Nick Park', :description => 'Chicken Run is a comedy escape drama with a touch of passion set on a sinister Yorks chicken farm in 1950s England.'},
  	 ]

movies.each do |movie|
  Movie.create!(movie)
end
