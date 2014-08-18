#!/bin/bash

#script file
#Creating 3 different users
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/users -d '{"user": {"email":"army@foo.com", "name":"Mitchell Welts", "password":"P@ssw0rd12"}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/users -d '{"user": {"email":"mess@foo.com", "name":"Hayley Welterberg", "password":"P@ssw0rd12"}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/users -d '{"user": {"email":"Jsmith@foo.com", "name":"John Smith", "password":"P@ssw0rd12"}}'

#Creating 5 splatts for Mitchell
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hello, Splatter world", "user_id":3}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hello, Splatter world", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hello, Splatter world", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"A leaf fell on my head today", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"YEAH RUGBY", "user_id":3}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"I had a barstucks mocha-supersweet caramel thing today", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"It was a shame Robin Williams died, I really liked his song Rock DJ", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"TURTLES ARE SO KICKA##", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"This is how we do", "user_id":3}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"I am bored", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"If babys could talk, the would be the most intelligent human beings on earth", "user_id":3}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Ate a dog", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Has Anyone Really Been Far Even as Decided to Use Even Go Want to do Look More Like?", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"yes", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/splatts -d '{"splatt": {"body":"I like the taste of tears", "user_id":3}}'

curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/users/follows -d '{"id":1, "follows_id":2}';
curl -i -H "Content-type: application/json" -X POST http://unverferth.sqrawler.com:3000/users/follows -d '{"id":1, "follows_id":3}';

curl -i -H "Content-type: application/json" -X GET http://unverferth.sqrawler.com:3000/users/splatts/1

curl -i -H "Content-type: application/json" -X GET http://unverferth.sqrawler.com:3000/users/follows/1

curl -i -H "Content-type: application/json" -X GET http://unverferth.sqrawler.com:3000/users/splatts-feed/1

curl -i -H "Content-type: application/json" -X DELETE http://unverferth.sqrawler.com:3000/users/follows/1/3

curl -i -H "Content-type: application/json" -X Get http://unverferth.sqrawler.com:3000/users/splatts-feed/1