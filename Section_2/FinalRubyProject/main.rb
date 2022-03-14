# frozen_string_literal: true

require_relative 'crud' # on same directory

# On diff directory
# $LOAD_PATH << '.'
# require 'crud'

users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

hashed_users = Crud.create_secure_users(users)

p Crud.authenticate_user('heisenberg', 'password5', hashed_users) # {:username=>"heisenberg", :password=>"$2a$12$...I40uAx/zVX"}
# p Crud.authenticate_user('heisenberg', 'password6', hashed_users) # "Credentials were not correct"
