Meteor.startup ->
  map = new Map()

  google.maps.event.addListener(map.getGoogleMap(), "click", (event) ->
    Items.insert({point: event.latLng})
  )

  Items.find().observe(
    added: (item)=>
      console.log(item)
      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
  )

