# Drupal Project

This is a simple Drupal project designed to demonstrate the installation and basic configuration of a Drupal site done as a technician for the Stefanini Group company

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Project](#running-the-project)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project provides a basic Drupal setup, allowing you to quickly deploy a Drupal website for development or production purposes. It includes essential configurations and instructions to help you get started.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **PHP**: Version 8.3 or higher
- **Composer**: Dependency manager for PHP
- **MySQL/MariaDB**: As your database server
- **Web Server**: PHP Embedded, Apache, Nginx, or another compatible server
- **Drush**: Command line shell and scripting interface for Drupal (optional but recommended, you can use admin toolbar plugin as well..)

## Installation

Follow these steps to install the Drupal project:

1. **Clone the Repository**:
   Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/jeancharlesx64/drupal-challenge-stefanini.git
   cd drupal-challenge-stefanini
   ```
   
 2. **Install dependencies**:
  Use Composer to install PHP dependencies::
 ```bash
    composer install
 ```
    
 3. **Create a Database**:
Configure MySQL and import the database in /database/dump/*.sql

4. **Enter the Web directory**:
   Start the server using the .ht.router.php file:
   ```bash
     php -S localhost:3333 .ht.router.php
   ```
