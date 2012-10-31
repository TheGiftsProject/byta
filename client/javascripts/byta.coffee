Template.facebook_connect_button.events(
  "click input": ->
    Meteor.loginWithFacebook(->
      console.log("done")
    )
)

Meteor.startup ->
  console.log(Meteor.user())
  map = new Map(Config.map.setup)

  map.addEventListener("click", (event) ->
    Items.insert({point: event.latLng})
  )

  Items.find().observe(
    added: (item)=>
      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
  )

