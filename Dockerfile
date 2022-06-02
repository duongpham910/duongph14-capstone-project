FROM ruby:2.7.4

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Install gemfiles
RUN bundle install

# Copy source code to working directory
COPY . /app/

# Expose port 3000
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
