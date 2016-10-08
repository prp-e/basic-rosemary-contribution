#How to contribute on OpenStreetMap
By reading this code, you can contribute on [OpenStreetMaps](http://openstreetmaps.org) using the [Rosemary](https://github.com/sozialhelden/rosemary) library and `ruby` programming language. 
##How this works? 
This code works with [API v0.6](http://api06.dev.openstreetmap.org), and you need to comment this line :
```ruby
Rosemary::Api.base_uri 'https://api06.dev.openstreetmap.org' 
```
to contribute on main site. Also, you can change it when you want to use any other OSM-derived websites and add nodes. 
##How does a node look like?
A node is simply like this : [Null Cafe, Tehran, Iran](http://www.openstreetmap.org/node/4436661390). The only things you need to know is latitude and longitude of the place you want to add on the maps :). 
