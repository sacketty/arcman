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
