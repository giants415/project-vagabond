#Project "Vagabond"
---
###Wander App
![Wander](http://i.imgur.com/Rab99NV.png)
##Collaborators
William Namen, Lisa Olson, Alicia Brown, Andrew Vinocur
##Client Proposal
###Client Wireframe
![CLient Wireframe](https://raw.githubusercontent.com/sf-wdi-31/project-vagabond/master/wireframes.png)
###Initial Proposal
Client requested a travel website that allow users to make posts about the city where they currently live. These posts would allow users to read about events, entertainment, food recommendations, and other related activities that occur in their city.
###Future Development
Client would like to continue developing  the site to create a community that helps non-native English speakers discuss the aforementioned topics while practicing their English.
##Technologies Used
1. Rails 5
2. Ruby
3. [HAML](http://haml.info/)
4. Foundation, SASS
5. Heroku
##Code Examples
###William
```
def post_params
  post_info = params.require(:post).permit(:title, :content)
  post_params = post_info.merge({city_id: params[:city_id], user_id: current_user.id})
end
```
###Lisa
```
%button#newPostButton.submit-button{onclick: "location.href = '/cities/" + @city.id.to_s + "/posts/new'"} Add New Post
= form_for @city do |f|
    = f.label :city_name, 'City:'
    = f.text_field :city_name
    = f.label :city_state, 'State:'
    = f.text_field :city_state
    = f.submit 'Create City!'
```
###Alicia
```
.parallax-background
  .intro-text
    %p WANDER
.parallax-content
  .row
    .medium-4.large-4.columns
      .image
        = link_to image_tag("sf-image.jpg"), '/cities/1/posts'
        %span.title San Francisco
      .content
        %p I shall be telling this with a sigh. Somewhere ages and ages hence: Two roads diverged in a wood, and I — I took the one less traveled by. And that has made all the difference.
    .medium-4.large-4.columns
      .image
        = link_to image_tag("gibraltar-image.jpg"), "/cities/2/posts"
        %span.title Gibraltar
      .content
        %p I shall be telling this with a sigh. Somewhere ages and ages hence: Two roads diverged in a wood, and I — I took the one less traveled by. And that has made all the difference.
    .medium-4.large-4.columns
      .image
        = link_to image_tag("london-image.jpg"), "/cities/3/posts"
        %span.title London
      .content
        %p I shall be telling this with a s
```
###Andrew
```
  #main-menu.top-bar
      - if current_user
        .top-bar-right
          %ul.vertical.medium-horizontal.menu
            %li
              %a{ href: "/cities/" + Random.rand(1..3).to_s }
                %p.wanderBtn Wander
            %li
              =link_to "Cities", cities_path
            %li
              =link_to "My Profile", user_path(current_user)
            %li
              =link_to "Log Out", logout_path
      - else
        .top-bar-right
          %ul.vertical.medium-horizontal.menu
            %li
              %a{ href: "/cities/" + Random.rand(1..3).to_s }
                %p.wanderBtn Wander
            %li
              =link_to "Cities", cities_path
            %li
              =link_to "Sign Up", new_user_path
            %li
              =link_to "Log In", new_session_path
        .top-bar-left
          %ul.vertical.medium-horizontal.menu
            %li
              =link_to "Home", root_path
```
```
The "Wander" Button
%li
    %a{ href: "/cities/" + Random.rand(1..3).to_s }
        %p.wanderBtn Wander
```
