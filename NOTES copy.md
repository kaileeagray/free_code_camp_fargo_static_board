


## To dos:
+ add edit/create camper profile to user edit page
+ can we make edit pages more dry by using partials to new?

+ in user controller -- camper profile needs to be created on sign_up
+ sign up page - field for fcc profile
+ edit camper page
+ create camper_profile via camper_profile controller
+ sort leaderboard by points
+ DONE fix non-admin view of leaderboard -- only link to edit
  -- eventually: make multiple edits?
+ merge show, camper_profile.html.erb pages
+ DONE -- rename camper_profile to camper?
+ collect git hub handles?
+ add pundit authorization for show, edit, delete, create


+ add carrierware to handle avatars -- use default no-face.png: https://github.com/carrierwaveuploader/carrierwave/wiki/How-to:-use-carrierwave-with-devise

++ start the scraping process! ++

+ what's up with the master role?

+ improve/test user/camper creation, linkage

+ create db models for projects, challenges
  -- ? do I need this? -- Can I just link projects and challenges? Don't need db storage?
    --- But! If I did implement db would that decrease load times
  -- add most recent project, most recent challenge to view page

### once finished with user and camper create, edit, view, delete AND scraping ###
+ add user ability to follow camper_profiles -- user join table
+ user follow view pages
+ user view page


## much later
+ make even drier!
+ check logic in proper location
+ go through requirements

## much, much later
+ add git hub, bit bucket

+ improve seed data -- import actual usernames submitted


## Resources used:
+ Rails-Devise-Pundit sample app -- https://github.com/RailsApps/rails-devise-pundit

+ Devise docs -- https://github.com/plataformatec/devise#getting-started

+ heroku maintenance:off https://devcenter.heroku.com/articles/maintenance-mode

+ http://www.theodinproject.com/ruby-on-rails/active-record-queries

+ http://guides.rubyonrails.org/active_record_querying.html

+ scraping example: http://railscasts.com/episodes/190-screen-scraping-with-nokogiri?view=asciicast

+
