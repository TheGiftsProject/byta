class Map
  constructor: (opts = {}) ->
    mapOptions =
      center: new google.maps.LatLng(opts.lng, opts.ltd)
      zoom: opts.zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
      mapTypeControl: false
    @map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)

  addMarker: (latLng) ->
    marker = new google.maps.Marker({
      position: latLng,
      map: @map,
      animation: google.maps.Animation.DROP
    })

  addEventListener: (eventType, handler) ->
    google.maps.event.addListener(@map, eventType, handler)
