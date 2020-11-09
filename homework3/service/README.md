# CS 262 Monopoly Webservice

This is the data service application for the [CS 262 sample Monopoly project](https://github.com/calvin-cs262-organization/monopoly-project)
and it is deployed here:

<https://cs262-monopoly-service.herokuapp.com/>

It is based on the standard Heroku with Node.js tutorial.

<https://devcenter.heroku.com/articles/getting-started-with-nodejs>  

The database is relational with the schema specified in the `sql/` sub-directory,
 and is hosted on [ElephantSQL](https://www.elephantsql.com/). The database user
and password are stored as Heroku configuration variables rather than in this (public) repo.

We implement this sample as a separate repo to simplify Heroku integration, but
for lab 9, you can simply submit your code under the standard `cs262/lab09` directory.
For the team project, configure your Heroku app to auto-deploy the code from the
master/main branch of your
service repo; do this by following the instructions under the &ldquo;Deploy&rdquo;
tab in your application in the Heroku dashboard.

 So, I didn't have to change any code to get it to work, so just as proof that I worked through the lab, these are the user and password values I used
 USER: mcpikkbm
 PASSWORD: XK_ryjwxWlA-7DA9HZsiU4JUpOn6m7Sz
URL: http://desolate-fortress-44832.herokuapp.com/playergame

HOMEWORK 3 QUESTIONS
1. The active URLs all have a base of https://desolate-fortress-44832.herokuapp.com. The exensions are: "/", "/players", "/players/:id",
"/playergames", "/players/:id", and '/players'

2. All active URLs are nullipotent, as they return data but do nothing else. The functions for deleting and adding players, while unable to be accessed through a web browser, are idempotent.

3. This service is RESTful, it is designed to work well through the internet. All data returned is recieved through and HTTP request, and all add and delete functions are similarly impletmented, despite the fact that they cannot be accessed through a browser.

4. As of now, there is no evidence of an impedance mismatch, as the queries I need are simple, and the overall structure of my application is simple as well. That being said, if this project becomes larger and more complex, it could happen.
