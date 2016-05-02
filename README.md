# UCB Senior Class Map
<a href="https://codeclimate.com/repos/56eb7aea22177f00680039a1/feed"><img src="https://codeclimate.com/repos/56eb7aea22177f00680039a1/badges/8252477d0bdd4d90e2d8/gpa.svg" /></a>
<a href="https://codeclimate.com/repos/56eb7aea22177f00680039a1/coverage"><img src="https://codeclimate.com/repos/56eb7aea22177f00680039a1/badges/8252477d0bdd4d90e2d8/coverage.svg" /></a>


# Running Project Locally
0. clone repo
1. brew update (optional)
2. gem install bundler
3. bundle install
4. rake db:create
5. rake db:migrate
6. rails server

check: localhost:3000


If you ruby is out of date:
1. \curl -L https://get.rvm.io | bash -s stable –ruby   
2. rvm install ruby-2.2.2   

If you are running locally:   
lsof -i tcp:3000   
kill -9 [pid]  

deployment to heroku! Make sure you know how to deploy!  
1.heroku login    
2. enter your account login and password  
3. heroku git:remote -a ucb-senior-map  
4. git push heroku master  

@ project owner: make sure your group members are added as collaborators
