apt update

#npm installation
apt install -y npm

#install node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

#allows nvm to run without restart
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#install node
nvm install 10.15.3

#mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt update
apt install -y mongodb-org=4.0.6 mongodb-org-server=4.0.6 mongodb-org-shell=4.0.6 mongodb-org-mongos=4.0.6 mongodb-org-tools=4.0.6

#nodemon - dev only
npm install -g nodemon


#start mongo
sudo service mongod start

##put npm packages in package.json
#passport.js
#npm install passport

#mongoose.js
#npm install mongoose

#webpack
#npm install --save-dev webpack@4.29.6
#npm install --save-dev webpack-cli
