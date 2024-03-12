# Use an official Elixir runtime as a parent image
FROM elixir:1.15.7-otp-25

# Set the working directory in the container
WORKDIR /app

ENV MIX_ENV="dev"

# Copy the current directory contents into the container at /app
COPY . /app

# Install Hex and Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Install dependencies
RUN mix deps.get

# Compile the project
RUN mix compile

# Run the Phoenix app
CMD ["mix", "phx.server"]
