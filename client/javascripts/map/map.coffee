class Map
  constructor: ->
    @mapOptions =
      center: new google.maps.LatLng(32.051801, 34.81716)
      zoom: 12
      mapTypeId: google.maps.MapTypeId.ROADMAP

  getGoogleMap: ->
    @map ||= new google.maps.Map(document.getElementById("map_canvas"), @mapOptions)

  addMarker: (latLng)->
    marker = new google.maps.Marker({
      position: latLng,
      map: @getGoogleMap(),
      title: "Hello World!",
      animation: google.maps.Animation.DROP
    })
