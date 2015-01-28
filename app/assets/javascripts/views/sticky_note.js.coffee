class App.Views.StickyNote extends Backbone.View
    template: JST['notes/sticky_note']

    render: ->
        @$el.html(@template(notey: @model))
        this
