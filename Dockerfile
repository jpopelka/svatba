FROM fedora

WORKDIR /opt

RUN dnf -y install npm
RUN /usr/bin/npm install -g gulp
RUN /usr/bin/npm install -g bower

CMD ["gulp", "connect"]

COPY package.json gulpfile.js .

RUN npm install

ADD . /opt

RUN gulp