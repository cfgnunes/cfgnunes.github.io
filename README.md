# My personal website

[![Build Status](https://travis-ci.org/cfgnunes/cfgnunes.github.io.svg?branch=master)](https://travis-ci.org/cfgnunes/cfgnunes.github.io)

Repository of my personal website published in <https://cfgnunes.com>.

## Getting Started

### Prerequisites

This section assumes Ubuntu 16.04 (also tested on Ubuntu 18.04), but the procedure is similar for other Linux distributions. The prerequisites is to install the following packages:

```sh
sudo apt-get -y install jekyll bundler
```

### Installing dependencies

Enter the cloned folder via terminal and run:

```sh
bundle install
```

### Running the website

Use the following command:

```sh
bundle exec jekyll serve --config _config.yml,_config-dev.yml
```

Now, just open it in your browser: <http://localhost:4000>

## Acknowledgments

* Sérgio Kopplin - *Made the template [Indigo](https://github.com/sergiokopplin/indigo), used in this website*
