class Map
  constructor: (opts = {}) ->
    @mapOptions =
      center: new google.maps.LatLng(32.074231, 34.785973)
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      zoom: 13,
      zoomControlOptions:
        style: google.maps.ZoomControlStyle.SMALL
      mapTypeControl: false
      panControl: false
      zoomControl: false

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
