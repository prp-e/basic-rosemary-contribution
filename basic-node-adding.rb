require 'rosemary' 


Rosemary::Api.base_uri 'api06.dev.openstreetmap.org'

client = Rosemary::BasicAuthClient.new('your_osm_username', 'your_osm_password')

api = Rosemary::Api.new(client)
changeset = api.create_changeset("Some meaningful comment, for example a point on Antarctica.") 
node = Rosemary::Node.new(:lat => -80.0 , :lon => -120.0) 
# This point is called Marie Byrd land, and it's not claimed by any well-recognized authorities of the world. Also, a guy called "Travis McHenry" claimed authority and declared a nation called "Grand Duchy of Westarctica". 
api.save(node, changeset) 
#This line, saves your code, and gives you a number. That's the "node" you've added to maps, and it's accessible here : api06.dev.openstreetmap.org/node/THAT_GLORIOUS_NUMBER 

node.add_tags("amenity" => "restaurant", :name => "Penguin Shop") 
#This is an example of adding tags to what you added to map!

api.close_changeset(changeset)
