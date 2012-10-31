Template.hello.greeting = ->
  "Welcome to byta."

Template.hello.events "click input": ->

  # template data, if any, is available in 'this'
  console.log "You pressed the button"  if typeof console isnt "undefined"

Meteor.startup ->
  console.log Meteor.user()
  map = new Map()

  google.maps.event.addListener(map.getGoogleMap(), "click", (event) ->
    Items.insert({point: event.latLng})
  )

  Items.find().observe(
    added: (item)=>
      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
  )



