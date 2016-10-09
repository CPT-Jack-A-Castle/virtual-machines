#!/bin/bash
echo "#################### Install Scrapy ####################"
apt -qy update && apt -qy dist-upgrade && apt -qy --no-install-recommends install \
    build-essential \
    python3 \
    python3-dev \
    python3-pip \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    libffi-dev \
    libssl-dev \
 && pip3 install --upgrade pip \
 && pip3 install setuptools wheel \
 && pip3 install scrapy \
 && apt -qy purge build-essential \
 && apt -qy autoremove \
 && apt -qy clean \
 && rm -rf /var/lib/apt/lists/*

