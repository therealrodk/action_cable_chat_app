# README

This is the base app for [*Learn Enough Action Cable to Be Dangerous*](https://www.learnenough.com/action-cable-tutorial).

The base app doesn't use Action Cable, but rather is designed as the starting point for the tutorial. To see the state of the app at the *end* of the tutorial, switch to the `action-cable-reference` branch:

```
git checkout action-cable-reference
```

When following the tutorial, you should be able to resolve any discrepancies by comparing with this reference app.


## Heroku
[https://secret-thicket-57137.herokuapp.com](https://secret-thicket-57137.herokuapp.com)

### Redis To Go
Created redistogo-cubed-56231 as REDISTOGO_URL
Use `heroku addons:docs redistogo` to view documentation.


## Future Upgrades

Messages
- We see from Listing 4 that we’ll need only the index and create actions in this tutorial, but a more full-featured chat app would probably add the other REST actions as well (show, edit, update, and destroy).

