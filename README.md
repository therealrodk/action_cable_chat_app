# README

This is the base app for [*Learn Enough Action Cable to Be Dangerous*](https://www.learnenough.com/action-cable-tutorial).

## To Do
Check for REFACTOR


## Heroku
[https://secret-thicket-57137.herokuapp.com](https://secret-thicket-57137.herokuapp.com)

### Redis To Go
Created redistogo-cubed-56231 as REDISTOGO_URL
Use `heroku addons:docs redistogo` to view documentation.


## Future Upgrades

Messages
- We see from Listing 4 that we’ll need only the index and create actions in this tutorial, but a more full-featured chat app would probably add the other REST actions as well (show, edit, update, and destroy).
- We can add a :before to the posts coming from the public, using CSS, which can prepend @support so that it pings Tyler
- We need to somehow make it so that each public user has a unique username so that Tyler can @mention them, and only they will see it. We could require them to set up an account, which would be a turnoff for most people, or perhaps we could make them provide a username before logging into the chat page.
- We could require guests to provide an email and name before chatting. These would be stored in a special database specifically for chats. Then, after a period of time (say, 24-48 hours), check to see if their email is in the regular database of Users. If not, send them a follow-up email asking if there is anything we can do, or offering a discount or something. This would require something like this:
```
Chat model
name:text
email:text
has_many :messages (? Somehow make this store a relationship between this specific Chat and the Messages stored during the conversation.)
```
