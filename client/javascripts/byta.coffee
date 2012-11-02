Template.user_info.events(
  "click input": ->
    Meteor.loginWithFacebook(
      {requestPermissions: ['read_friendlists']},
      facebookResult
    )

)

facebookResult = (result) ->
  console.dir result



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

