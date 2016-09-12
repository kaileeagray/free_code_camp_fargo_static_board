
+ validate free code camp username on creation
+ show error message if scraping of user is not successful


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

+ http://jsfiddle.net/b2m38br9/1/
+ grab img source http://stackoverflow.com/questions/23760751/how-to-get-the-img-src-using-nokogiri-and-at-css


edit/delete admin buttons to add later
<th>Edit</th>
<th>Delete</th>

<td>
  <%= link_to edit_camper_path(camper), class: "btn btn-primary", remote: true do %>
    <i class="glyphicon glyphicon-edit"></i>
  <% end %>
</td>

<td>
<div class="form">
  <div class="form-group">
      <%= link_to camper_path(camper), method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-danger", remote: true do %>
        <i class="glyphicon glyphicon-trash"></i>
      <% end %>
  </div>
</div>

</td>


# social_links = doc.at_css("h1.profile-social-icons").css("a").collect do |a|
#   a.attr("href")
# end



<header class="navbar navbar-fixed-top navbar-inverse navbar-custom">
  <div class="container">
    <%=link_to " Fargo Leaderboard", root_path, class: "logo", target: "_blank"%> | <%=link_to "Free Code Camp", href="http://www.freecodecamp.com", class: "logo", target: "_blank"%>

    <nav>
      <!-- Brand and toggle get grouped for better mobile display -->


    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="navbar" id="bs-example-navbar-1">

    <!-- main nav links -->


      <!-- social nav links -->

        <ul class="nav navbar-nav navbar-right">
          <li><%= link_to "Join Fargo's campsite!", "https://www.facebook.com/groups/free.code.camp.fargo/", target: "_blank"%></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</header>


<header class="navbar navbar-fixed-top navbar-inverse navbar-custom">
  <div class="container">
    <%=link_to "Free Code Camp", href="http://www.freecodecamp.com", class: "logo", target: "_blank"%>

    <nav>
      <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse">

        <ul class="nav navbar-nav navbar-right">
          <li class="nav-item"><%= link_to "Join Fargo's campsite!", "https://www.facebook.com/groups/free.code.camp.fargo/", target: "_blank"%></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</header>
