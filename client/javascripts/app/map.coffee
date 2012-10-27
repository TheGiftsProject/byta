class Map
  constructor: (lat, lng) ->
    mapOptions =
      center: new google.maps.LatLng(32.051801, 34.81716)
      zoom: 12
      mapTypeId: google.maps.MapTypeId.ROADMAP
    @map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)

  addMarker: (latLng) ->
    marker = new google.maps.Marker({
      position: latLng,
      map: @map,
      animation: google.maps.Animation.DROP
    })

  addEventListener: (eventType, handler) ->
    google.maps.event.addListener(@map, eventType, handler)
