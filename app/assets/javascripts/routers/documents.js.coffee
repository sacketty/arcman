class Arcman.Routers.Documents extends Backbone.Router
  routes:
    '': 'index'
    'upload': 'upload'

  showView: (klass) ->
    view = new klass()
    $('#container').html(view.render().el)

  index: ->
    @showView Arcman.Views.DocumentsIndex

  upload: ->
    @showView Arcman.Views.DocumentsUpload

