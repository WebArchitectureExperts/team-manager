#!/bin/bash

# Ensure RAILS_PROJECT is correct
# Ensure this script is executable
# Then run this script (./generate_tables.sh)

RAILS_PROJECT=team-manager/
cd $RAILS_PROJECT

# Person (People) table
rails g scaffold person id:int first_name:string last_name:string addr_route:string addr_city:string addr_state:string addr_zip:string username:string pass_hash:string pass_salt:string bio:text gender:string height_in_inches:string weight_in_pounds:string birth_month:int birth_day_number:int birth_year:int
# Phone_number (Phone_numbers) table
rails g scaffold phone_number phone:int person:references phone_id:string
# Email (Emails) table
rails g scaffold email email:string person:references
# Certification (Certifications) table
rails g scaffold certification person:references certification_name:string expiration_date:datetime note:text
# Role (Roles) table
rails g scaffold role id:int description:string value:int
# Team (Teams) tables
rails g scaffold team id:int team_name:string competitive:boolean age_group:string
# Organization (Organizations) table
rails g scaffold organization id:int name:string
# Event_property_map table
rails g scaffold event_property_map event_id:int key:string value:string
# Event (Events) table
rails g scaffold event id:int event_type:int event_datetime:datetime team_id:int created_by:int open_to_public:boolean
# Event_type table
rails g scaffold event_type id:int type_description:string


## Create Join Tables through migrations
# Parent_children (Join table)
# Team_people (Join table?)
# Team_person_roles (Join table)
# Organization_teams (Join table)


# Migrate the database
rails db:migrate
