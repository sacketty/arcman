window.Arcman =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new  Arcman.Routers.Documents()
    Backbone.history.start()

$(document).ready ->
  Arcman.init()  

window.isPDF= (url) ->
  res = false
  if url
    idx = url.lastIndexOf(".")
    res = url.substr(idx,4).toLowerCase() == ".pdf"
  res
    
window.changePage= (page, dr) ->
  dr ?= 'page'
  $(page.el).attr('data-role', dr);
  page.render();
  $('body').append($(page.el));
  transition = $.mobile.defaultPageTransition;
  # We don't want to slide the first page
  if(this.firstPage)
    transition = 'none'
    this.firstPage = false
    
  $.mobile.changePage($(page.el),{
    changeHash : false,
    transition : transition
  })


