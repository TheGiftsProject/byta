Template.hello.greeting = ->
  "Welcome to byta."

Template.hello.events "click input": ->

  # template data, if any, is available in 'this'
  console.log "You pressed the button"  if typeof console isnt "undefined"

Meteor.startup ->
  map = new Map()
