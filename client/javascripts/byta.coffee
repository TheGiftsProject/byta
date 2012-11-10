Template.user_info.events(
  "click input": ->
    Meteor.loginWithFacebook({requestPermissions: ['read_friendlists']})
)

Meteor.startup ->
  map = new Map().render($("#map_canvas"))

  if Modernizr.geolocation
    navigator.geolocation.getCurrentPosition(((p)=>positionSuccess(p)), ((e)=>positionError(e)), { enableHighAccuracy: true })

  positionSuccess = (position) ->
    console.dir position

  positionError = (error) ->
    console.dir error
#  map.addEventListener("click", (event) ->
#    Items.insert({point: event.latLng})
#  )
#
#  Items.find().observe(
#    added: (item)=>
#      map.addMarker(new google.maps.LatLng(item.point.Ya, item.point.Za))
#  )
