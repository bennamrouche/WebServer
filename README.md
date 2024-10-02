# Webserv
**Description**:  
Webserv is a custom HTTP server written in C++98, designed to help you understand the mechanics behind the Hypertext Transfer Protocol (HTTP).
This project allows you to build an HTTP server from the ground up and test it using any standard web browser. 
HTTP is one of the most widely used internet protocols, and this project will deepen your knowledge of its workings, even if your primary focus isn't web development.

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [General Rules](#general-rules)
4. [Setup](#setup)
5. [Configuration](#configuration)
6. [Bonus Features](#bonus-features)
7. [Testing](#testing)


## Introduction
HTTP is an essential protocol that powers the World Wide Web. This project will teach you how an HTTP server communicates with clients like web browsers. By creating your own server, you will gain insight into:
- Handling HTTP requests (GET, POST, DELETE).
- Serving static web pages.
- Managing file uploads.
- Creating error handling mechanisms and default error pages.
  
The primary goal of Webserv is to enhance your understanding of HTTP and network programming in C++.

## Features
- HTTP/1.1 compliant server.
- Serve static HTML pages.
- Support for file uploads.
- Non-blocking I/O using `poll()`, `epoll()`, or equivalent.
- Configuration file support for custom server settings.
- Multiple client and multiple port support.
- Dynamic error handling with default error pages.

## General Rules
- The server should never crash, even under extreme conditions like running out of memory.
- The project must compile using a provided `Makefile`.
- The code must follow C++98 standards and compile with `-Wall -Wextra -Werror`.
- No external libraries (including Boost) are allowed.
  
## Setup
### Prerequisites:
- C++98 compiler.
- Unix-based system (Linux or macOS recommended).
  
### Installation:
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/webserv.git
   cd webserv
`` 
Compile the project using the provided Makefile:

```bash

make
``` 
Run the server:

bash

    ./webserv [configuration file]

Example:

bash

./webserv config/default.conf

### Configuration

The server uses a configuration file to define settings like port, server names, routes, and error pages. You can customize the following in the config file:

```text
 
    Port and host.
    Default error pages.
    Route handling (define methods, directories, redirections, CGI support).
    File upload directory.

``` 

Refer to the example configuration file in the repository to set up your server.
### Bonus Features

```text 
    Support for cookies and session management.
    Handle multiple CGI scripts.
    Additional HTTP methods beyond GET, POST, DELETE.
```

### Testing

It is recommended to test the server using both a web browser and command-line tools like curl or telnet. Additionally, you can compare your server’s responses with NGINX, which is HTTP/1.1 compliant.
Example:

```bash
curl -X GET http://localhost:8080/index.html
```
