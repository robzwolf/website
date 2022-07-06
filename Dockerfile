FROM ruby

RUN apt-get update && apt-get install -y ruby-full build-essential

RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc \
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc \
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc \
    source ~/.bashrc

RUN gem install jekyll bundler

WORKDIR /website

COPY . .

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
