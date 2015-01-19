window.UpcaseBackbone =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
        @AllNotes = new @Collections.Notes
        @AllNotes.fetch().done =>
            new @Routers.UpcaseBackboneRouter
            Backbone.history.start(pushState: true, hashChange: false)

window.App = window.UpcaseBackbone

$(document).ready ->
    UpcaseBackbone.initialize()
