Template.user_info.events(
  "click input": ->
    Meteor.loginWithFacebook({requestPermissions: ['read_friendlists']})
)

Meteor.startup ->
  map = new Map().render($("#map_canvas"))

  positionSuccess = (position) =>
    map.setMyLocation(new google.maps.LatLng(position.coords.latitude, position.coords.longitude))
#    map.addMarker(new google.maps.LatLng(position.coords.latitude, position.coords.longitude))

  positionError = (error) ->
    console.dir error

  if Modernizr.geolocation
    navigator.geolocation.getCurrentPosition(positionSuccess, ((e)=>positionError(e)), { enableHighAccuracy: true })


#  map.addEventListener("click", (event) ->
#    Items.insert({point: event.latLng})
#  )
#
#  Items.find().observe(
#    added: (item)=>
#      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
#  )
