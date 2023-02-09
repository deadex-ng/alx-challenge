FROM ruby:2.7.2-alpine

RUN apk add --update --virtual \
  runtime-deps \
  postgresql-client \
  build-base \
  libxml2-dev \
  libxslt-dev \
  nodejs \
  yarn \
  readline \
  postgresql-dev \
  libc-dev \
  linux-headers \
  readline-dev \
  file \
  imagemagick \
  imagemagick-dev \
  imagemagick-libs \
  git \
  tzdata \
  && rm -rf /var/cache/apk/*

WORKDIR /app
COPY . /app/

# RUN gem install bundler -v '2.1.2'
ENV BUNDLE_PATH /gems
RUN yarn install
RUN bundle install


ENTRYPOINT ["bin/rails s"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000

# FROM ruby:2.7.2

# # nvm requirements
# RUN apt-get update
# RUN echo "y" | apt-get install curl
# # nvm env vars
# RUN mkdir -p /usr/local/nvm
# ENV NVM_DIR /usr/local/nvm
# # IMPORTANT: set the exact version
# ENV NODE_VERSION v16.17.0
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use --delete-prefix $NODE_VERSION"
# # add node and npm to the PATH
# ENV NODE_PATH $NVM_DIR/versions/node/$NODE_VERSION/bin
# ENV PATH $NODE_PATH:$PATH
# RUN npm -v
# RUN node -v

# # # Installing Node
# # # SHELL ["/bin/bash", "--login", "-i", "-c"]
# # RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
# # RUN source /root/.bashrc && nvm install 12.14.1


# # Installing yarn
# RUN curl https://deb.nodesource.com/setup_12.x | bash
# RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN apt-get update && apt-get install -y yarn


# WORKDIR /app
# COPY . /app/


# ENV BUNDLE_PATH /gems

# RUN bundle install
# # RUN yarn install


# ENTRYPOINT ["bin/rails s"]
# CMD ["s", "-b", "0.0.0.0"]

# EXPOSE 3000