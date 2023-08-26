# Chat_Application


## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Database Schema](#database-schema)
7. [API Endpoints](#api-endpoints)
8. [Contributing](#contributing)
9. [License](#license)
10. [Credits](#credits)

## Introduction

This is a simple Chat Application built using PHP. It allows users to create chat groups, join these groups, and send messages within them. All data is stored in an SQLite database, and all interactions between the client and server are done via a RESTful JSON API over HTTP(s).

For more details, please visit the [Project Link](https://github.com/bozkuya/Chat_Application).

## Features

- Create a new chat group
- Join an existing chat group
- Send messages within a chat group
- List all messages within a chat group
- RESTful JSON API

## Technologies Used

- PHP
- SQLite
- Slim Framework
- JSON

## Installation

1. Clone the repository
    ```bash
    git clone https://github.com/bozkuya/Chat_Application.git
    ```
2. Install dependencies
    ```bash
    cd Chat_Application
    composer install
    ```
3. Run the SQLite script to create the database
    ```bash
    sqlite3 chat.db < database.sql
    ```

## Usage

To start the server, run:

```bash
php -S localhost:8080 -t public
