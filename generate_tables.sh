#!/bin/bash

# Ensure RAILS_PROJECT is correct
# Ensure this script is executable (chmod 755 generate_tables.sh)
# Then run this script (./generate_tables.sh)

RAILS_PROJECT=team-manager/

cd $RAILS_PROJECT

# Person (People) table
rails g scaffold person id:int first_name:string last_name:string \
addr_route:string addr_city:string addr_state:string addr_zip:string \
username:string pass_hash:string pass_salt:string bio:text gender:string \
height_in_inches:string weight_in_pounds:string birth_month:int \
birth_day_number:int birth_year:int

# Phone_number (Phone_numbers) table
rails g scaffold phone_number phone:int person:references phone_id:string

# Email (Emails) table
rails g scaffold email email:string person:references




# Finally, db:migrate
#rails db:migrate
