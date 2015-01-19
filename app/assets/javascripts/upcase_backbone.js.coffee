window.UpcaseBackbone =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
        @AllNotes = new @Collections.Notes(@notesJson)
        new @Routers.UpcaseBackboneRouter
        Backbone.history.start(pushState: true, hashChange: false)

window.App = window.UpcaseBackbone

$(document).ready ->
    UpcaseBackbone.initialize()
