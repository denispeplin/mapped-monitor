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
    $.getJSON(
      "/points/1.json",
      (data) ->
        Gmaps.map.replaceMarkerSet(data)
    )
