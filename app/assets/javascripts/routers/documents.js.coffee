class Arcman.Routers.Documents extends Backbone.Router
  routes:
    '': 'index'
    'upload': 'upload' 
    'documents/:id': 'showDoc'

  showView: (klass, coll) ->
    view = new klass(collection: coll)
    $('#container').html(view.render().el)

  index: ->
    @showView Arcman.Views.DocumentsIndex

  upload: ->
    collection = new Arcman.Collections.Documents()
    collection.fetch()
    @showView Arcman.Views.DocumentsUpload, collection 

  showDoc: (id)->
    alert "Should show #{id} document here..."

