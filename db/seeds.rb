# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
Student.destroy_all

Student.create(
  name: "Wes",
  email: "wes@mail.ex",
  linkedin_url: "linkedin.com/wes",
  github_url: "github.com/wes",
  bio:"Apprentice web dev"
)
Student.create(
  name: "Laura",
  email: "laura@mail.ex",
  linkedin_url: "linkedin.com/laura",
  github_url: "github.com/laura",
  bio: "I came here to code hard and kick butt, and I'm all out of butt."
)
Student.create(
  name: "Natasha",
  email: "natasha@mail.ex",
  linkedin_url: "linkedin.com/natasha",
  github_url: "github.com/natasha",
  bio: "Ruby is life!"
)
Student.create(
  name: "Nat",
  email: "nat@mail.ex",
  linkedin_url: "linkedin.com/nat",
  github_url: "github.com/nat",
  bio: "Look at me, I'm Nat"
)
Student.create(
  name: "Taylor",
  email: "taylor@mail.ex",
  linkedin_url: "linkedin.com/taylor",
  github_url: "github.com/taylor",
  bio: "Look at me, I'm Taylor"
)

Event.create(
  date: "3/14/17",
  time: "7:00 pm",
  name: "Monthly Drupal Meetup at Canvas",
  location: "Canvas, 1203 19th St NW, 3rd floor, Washington DC",
  organizer: "DC Area Drupal Meetup Group",
  event_url: "https://www.meetup.com/drupal-dc/events/237749493/"
)
Event.create(
  date: "3/28/17",
  time: "7:00 pm",
  name: "DC Tech Meetup #54: Marketing and Mobilization Tech",
  location: "The Howard Theater, 620 T St NW, Washington DC",
  organizer: "DC Tech Meetup",
  event_url: "https://www.meetup.com/DC-Tech-Meetup/events/233237170/"
)
Event.create(
  date: "3/29/17",
  time: "6:00 pm",
  name: "NET/WORK DC 2017",
  location: "The Iron Yard, 1341 G St NW, Washington DC",
  organizer: "Technically Media",
  event_url: "https://www.meetup.com/Technically-DC/events/237051172/"
)
Event.create(
  date: "3/14/17",
  time: "6:00 pm",
  name: "#LegalHack Bug Bounties",
  location: "Chief Agency, 1800 Massachusetts Ave, 2nd floor, Washington DC",
  organizer: "DC Legal Hackers",
  event_url: "https://www.meetup.com/DCLegalHackers/events/236818678/"
)
Event.create(
 date: "3/15/17",
 time: "7:00pm",
 name: "React DC March",
 location: "Social Tables",
 organizer: "React DC",
 event_url: "https://www.meetup.com/React-DC/events/237559778/"
)
Event.create(
 date: "3/15/17",
 time: "8:30pm",
 name: "Ruby on Rails-Open Lab",
 location: "threespot",
 organizer: "Women Who Code DC",
 event_url: "https://www.meetup.com/Women-Who-Code-DC/events/237436473/"
)
Event.create(
 date: "3/15/17",
 time: "8:30pm",
 name: "Ruby on Rails-Open Lab",
 location: "threespot",
 organizer: "Women Who Code DC",
 event_url: "https://www.meetup.com/Women-Who-Code-DC/events/237436473/"
)
Event.create(
 date: "3/15/17",
 time: "6:30pm",
 name: "Front End Lab",
 location: "Social Tables",
 organizer: "Women Who Code DC",
 event_url: "https://www.meetup.com/Women-Who-Code-DC/events/237684369/"
)
Event.create(
 date: "3/18/17",
 time: "9:00am",
 name: "Alexandria Code & Coffee 3.04",
 location: "The Motley Fool",
 organizer: "Alexandria Code & Coffee",
 event_url: "https://www.meetup.com/Alexandria-Code-Coffee/events/237482148/"
)

Attendance.create(
  student_id: Student.first.id,
  event_id: Event.first.id,
  comment: "test of thing"
)
