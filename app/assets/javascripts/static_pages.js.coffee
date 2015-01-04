# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("a[href*=#]:not([href=#])").click ->
    if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") and location.hostname is @hostname
      target = $(@hash)
      target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
      if target.length
        $("html,body").animate
          scrollTop: target.offset().top - 70 #offsets for fixed header
        , 500
        false

  
  #Executed on page load with URL containing an anchor tag.
  if $(location.href.split("#")[1])
    target = $("#" + location.href.split("#")[1])
    if target.length
      $("html,body").animate
        scrollTop: target.offset().top - 70 #offset height of header here too.
      , 500
      false
