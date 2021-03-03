# Makers BnB

[![Build Status](https://travis-ci.com/AJ8GH/bnb-side-hustle.svg?branch=main)](https://travis-ci.com/AJ8GH/bnb-side-hustle) [![Coverage Status](https://coveralls.io/repos/github/AJ8GH/bnb-side-hustle/badge.svg?branch=signing-out)](https://coveralls.io/github/AJ8GH/bnb-side-hustle?branch=signing-out) [![Maintainability](https://api.codeclimate.com/v1/badges/dbe0b384547fb262f836/maintainability)](https://codeclimate.com/github/AJ8GH/bnb-side-hustle/maintainability)

Side project of Makers BnB for experimentation and learning purposes

## Technologies used
-

## Dependencies
-

## Getting started
-

## Usage
-

## User stories
-

### MVP
```
As a person with a spare room,
so I can access it's features,
I want to sign up as a user to MakersBNB

As a host,
so that I can advertise my spare room,
I would like to list a space
```

### Not MVP
```
As a user,
so that I can revisit the site and access my account,
I want to be able to sign-in

As a user,
so that I can keep my private information secure,
I want to be able sign out of my account

As a renter,
so that I can rent a space for one night,
I would like to make a booking request

As a host,
so that I can control when I rent my space,
I would like to approve or decline a booking request

As a host,
so that I can list my multiple spare rooms,
I would like to list multiple spaces

As a host,
so that I can describe my space.
I would like to be able to add a name, description and price to my listing

As a host,
so that I can rent my space on dates that I choose,
I want to be able to show a list of dates

As a renter,
to enhance my booking experience,
I would like to only see available spaces

As a host,
so that I can have my pick of renters,
I want to allow multiple booking requests until I have confirmed a booking
```

### Specifications

- Any signed-up user can list a new space.
- Users can list multiple spaces.
- Users should be able to name their space, provide a short description of the space, and a price per night.
- Users should be able to offer a range of dates where their space is available.
- Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
- Nights for which a space has already been booked should not be available for users to book that space.
- Until a user has confirmed a booking request, that space can still be booked for that night.


## Developer Workflow

- Choose a ticket to work on
- Create a github issue
- Create branch of same name
- Push new branch to remote
- Create pull request
- Have colleagues review / approve
- Merge
- Resolve conflicts

## Useful commands:

Create new branch:
```shell
git checkout main
git pull
git checkout -b <branch>
```

Push changes to remote from new branch:
```shell
git push -u origin <branch>
```

Pull pair's changes from new branch:
```shell
git checkout -b <branch>
git branch --set-upstream-to=origin/<branch>
```
