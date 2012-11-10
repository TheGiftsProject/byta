class Map
  constructor: (opts = {}) ->
    @mapOptions =
      center: new google.maps.LatLng(-33, 151)
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      zoom: 13,
      zoomControl: true,
      zoomControlOptions:
        style: google.maps.ZoomControlStyle.SMALL
    @

  render: (el)->
    if el.jquery
      el = el.get(0)
    console.dir @mapOptions
    @map = new google.maps.Map(el, @mapOptions)
    @
  addMarker: (latLng) ->
    marker = new google.maps.Marker({
      position: latLng,
      map: @map,
      animation: google.maps.Animation.DROP
    })

  addEventListener: (eventType, handler) ->
    google.maps.event.addListener(@map, eventType, handler)
