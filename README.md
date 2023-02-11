# alx-challenge
I have created an online store that sells musical instruments called `sello`. Users can sign up on sello to buy and sell musical instruments. If you find an instrument you'd like to buy, add it to your cart and checkout with stripe.

## What users can do with sello
- sign in or sign up
- sell instruments and up upload pictures
- add instruments to cart
- pay with [stripe](https://stripe.com/)

## How to set up dev environment

### Fork the repo
- Fork the repo

### Create a new branch
- Create new branch

### Open branch in GitHub codespace dev environment
- Open the new branch in codespace

### cd to the project folder
- `cd rails-store`

### Install ruby
- `rvm install "ruby-2.7.2"`

### Install rails 
- `gem install rails -v 6.0.0.rc1`

### Update packages list
- `sudo apt-get update`

### Install necessary packages for image uploads
- `sudo apt-get install libmagickwand-dev`
- `sudo apt-get install imagemagick`

### Install nodejs
- `nvm install 12.14.1`

I found that rails 6 works well with node 12.14.1

### Install gems
- `bundle install`

### Install all dependencies
- `yarn install --check-files`

### Add API keys
- delete this file `credentials.yml.enc`

- run this command `EDITOR="code --wait" rails credentials:edit`

- copy and paste the keys

- Close the file


### Apply migrations and populate the database
- `rails db:migrate db:seed`
- `rails s`

GitHub codespace will automatically create port forwading and give a link to open the app in your browser.

If you're running this for the first time, you'll encounter this error.

![blocked](https://user-images.githubusercontent.com/116260107/218122062-92054913-70b1-43fc-8a12-48875df9448b.PNG)

Copy the line and add it to `/rails-store/config/environments/development.rb`
![hosts](https://user-images.githubusercontent.com/116260107/218123555-46a1fa6f-ca5d-4f80-a4bb-a3887aeca18d.PNG)

Stop the server and start it again.


## Docker
We can build and run a dockerfile by:
- `docker build --tag sello . `
- `docker run -p 3000:3000  sello`

## Checklist
- [x] Ruby On Rails 6
- [x] Docker
- [x] RoR HTML and JSON distribution
- [x] Models with relationships
- [x] Views/forms
- [x] A README for the reviewer to fully understand how to setup our development environment





