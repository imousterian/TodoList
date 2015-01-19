window.UpcaseBackbone =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
        @AllNotes = [
            {id: 1, title: "The first note", content: "I am a note!"}
            {id: 2, title: "The second note", content: "I am a note, too!"}
            {id: 3, title: "The third note", content: "I am a note, three!"}
        ]
        new @Routers.UpcaseBackboneRouter
        Backbone.history.start(pushState: true, hashChange: false)

window.App = window.UpcaseBackbone

$(document).ready ->
    UpcaseBackbone.initialize()
