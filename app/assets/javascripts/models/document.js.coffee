class Arcman.Models.Document extends Backbone.Model
  idAttribute: "_id" 

  show: ->
    docShow = new Arcman.Views.DocumentsShow(model: this)
    $('#container').html(docShow.render().el)
