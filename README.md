# Makers BnB

Side project of Makers BnB for experimentation and learning purposes

## User stories

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
so that my information is recorded and I am contactable,
I want to be able to return to my account to sign-in

As a user,
so that I can keep my private information secure when using a public computer,
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
git checkout -b <branch-name>
```

Push changes to remote from new branch:
```shell
git push --set-upstream origin <branch-name>
```

Pull pair's changes from new branch:
```shell
git checkout -b <branch-name>
git branch --set-upstream-to=origin/<branch-name>
```
