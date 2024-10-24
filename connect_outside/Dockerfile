FROM ubuntu:jammy

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install any necessary packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

