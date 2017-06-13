# tournament

## Project Summary
This project develops a database schema to store the game matches between players for Swiss style tournament. I then write code to query this data and determine the winners of various games

## Prerequisites
1. Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/)

## Installation
1. Make sure to download all of the files in this repository and save the files in the same local folder.
2. Power up the virtual machine by typing: vagrant up
3. Once the virutal machine is done booting, ssh in by typing: vagrant ssh
4. Navigate to the folder's directory launch the psql console by typing: psql
5. Create the tournament database by typing: i\ tournament.sql
6. Enter: \q to go back to the directory
7. Run the test python file using python tournament_test.py.
