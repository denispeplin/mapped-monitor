# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#replace_markers').click ->
    $.getJSON(
      "/points.json",
      (data) ->
        Gmaps.map.replaceMarkers(data)
    )

$ ->
  $('#replace_marker1').click ->
    toClear = [ 1, 3 ]
    for marker in Gmaps.map.markers
      if marker.id in toClear
        Gmaps.map.clearMarker marker
    $.getJSON(
      "/points/1.json",
      (data1) ->
        Gmaps.map.addMarkers(data1)
    )
