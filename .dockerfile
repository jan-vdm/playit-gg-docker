FROM ubuntu:21.04

# Update default packages
RUN apt-get update

# Get Ubuntu packages
RUN apt-get install -y \
    build-essential \
    curl

# Update new packages
RUN apt-get update

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

WORKDIR /app
COPY ./playit-linux_64-0.4.7 .
RUN chmod +x playit-linux_64-0.4.7
RUN ls -a
CMD ./playit-linux_64-0.4.7