FROM ubuntu

# Base install
RUN apt-get update -y
RUN apt-get install -y vim git-core build-essential g++ libssl-dev curl wget apache2-utils libxml2-dev

# Install NVM
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc

# Install node.js
#RUN /bin/bash -c '. /.nvm/nvm.sh && nvm install v0.6.21 && nvm use v0.6.21 && nvm alias default v0.6.21 && ln -s /.nvm/v0.6.21/bin/node /usr/bin/node && ln -s /.nvm/v0.6.21/bin/npm /usr/bin/npm'
#RUN /bin/bash -c '. /.nvm/nvm.sh && nvm install v0.8.25 && nvm use v0.8.25 && nvm alias default v0.8.25 && ln -s /.nvm/v0.8.25/bin/node /usr/bin/node && ln -s /.nvm/v0.8.25/bin/npm /usr/bin/npm'
RUN /bin/bash -c '. /.nvm/nvm.sh && nvm install v0.10.18 && nvm use v0.10.18 && nvm alias default v0.10.18 && ln -s /.nvm/v0.10.18/bin/node /usr/bin/node && ln -s /.nvm/v0.10.18/bin/npm /usr/bin/npm'

# Install package managers
RUN npm install -g sm

# Install Cloud9
RUN git clone https://github.com/ajaxorg/cloud9.git cloud9
RUN cd /cloud9 && sm install
#RUN /bin/bash -c 'cd cloud9 && git checkout f7d102bc225c922f116d2cea52a746d64343ea59 && rm -rf node_modules && sm update'

# Create the workspace
RUN mkdir /workspace
VOLUME /workspace

EXPOSE 3131:3131
CMD ["/bin/bash", "-c", "'/cloud9/bin/cloud9.sh -l 0.0.0.0 -w /workspace'"]
