class Arcman.Routers.Documents extends Backbone.Router
  routes:
    '': 'index'
    'upload': 'upload'

  index: ->
    alert "Home page..."

  upload: ->
    alert "Here we upload the document"
