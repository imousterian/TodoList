window.UpcaseBackbone =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
        @AllNotes = new @Collections.Notes(@notesJson, parse: true)
        view = new @Views.Notes(collection: @AllNotes)
        $('#container').html(view.render().el)

window.App = window.UpcaseBackbone

$(document).ready ->
    UpcaseBackbone.initialize()
