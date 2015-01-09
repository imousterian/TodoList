window.UpcaseBackbone =
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
    initialize: ->
        new @Routers.UpcaseBackboneRouter
        Backbone.history.start(pushState: true, hashChange: false)

window.App = window.UpcaseBackbone

$(document).ready ->
    UpcaseBackbone.initialize()
