App.Views ||= {}

class App.Views.HomePageView extends Backbone.View
  initialize: ->
    if $('#venue-map').length
      gmap_show "venue-map", 51.194422, -0.847754, "Northbrook Park", "Farnham, Surrey", "GU10 5EU"
    return

  gmap_show = (div, lat, lng, name, address, postal_code) ->
    handler = Gmaps.build("Google") # map init

    isDraggable = (if $(document).width() > 480 then true else false)
    mapOptions =
      draggable: isDraggable
      scrollwheel: false # Prevent users to start zooming the map when scrolling down the page

    handler.buildMap
      provider: mapOptions
      internal:
        id: div
    , ->
      markers = handler.addMarkers([ # put marker method
        lat: lat
        lng: lng
        infowindow: "<b>" + name + "</b> " + address + ", " + postal_code
      ])
      handler.bounds.extendWith markers
      handler.fitMapToBounds()
      handler.getMap().setZoom 15
      return
    return
