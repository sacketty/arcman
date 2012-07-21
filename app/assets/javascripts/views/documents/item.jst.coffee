class Arcman.Views.DocumentsItem extends Backbone.View
  
  tagName: "tr"
#  className: "span3"	
  template: JST['documents/item']

  events:
    "click a.delete": "delete"
    "click a.edit": "edit"

  render: -> 
    $(@el).html(@template(@model.toJSON()))
    return this

  delete: (e)->
    e.preventDefault()
    if confirm("Vous etes sûr ?")
      this.model.destroy()
      this.remove()

  edit: (e) ->
    e.preventDefault()
    this.model.show()
