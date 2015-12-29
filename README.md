# Udacity_Tournament_Project2
Udacity Full Stack Web Developer Nanodegree Project 2 - Tournament Results
<p>This program will simulate the first two rounds of a Swiss Tournament. In the first round, each player will be randomly assigned to another and a win or loss will be recorded. In the second round, those players who have one win will play one another and those with one loss will play one another.</p>

<h2>Files</h2>
 - tournament.py - Implementation of a Swiss-system tournament in python functions
 - tournament.sql - Table definition for the tournament project in postgresql database
 - tournament_test.py - Test cases for tournament.py

<h2>Prerequisites</h2>
 - Virtualbox - https://www.virtualbox.org/wiki/Downloads
 - Vagrant - https://www.vagrantup.com/downloads

<h2>Instruction</h2>
 - Load Vagrant VM
 - Initialize the database in psql
  - vagrant=> \i tournament.sql
 - Run the unit test
  - vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py

<h2>Test Result</h2>
  vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
  1. Old matches can be deleted.
  2. Player records can be deleted.
  3. After deleting, countPlayers() returns zero.
  4. After registering a player, countPlayers() returns 1.
  5. Players can be registered and deleted.
  6. Newly registered players appear in the standings with no matches.
  7. After a match, players have updated standings.
  8. After one match, players with one win are paired.
  Success!  All tests pass!
