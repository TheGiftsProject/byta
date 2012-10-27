Meteor.startup ->
  map = new Map()

  map.addEventListener("click", (event) ->
    Items.insert({point: event.latLng})
  )

  Items.find().observe(
    added: (item)=>
      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
  )

