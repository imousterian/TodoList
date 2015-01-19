class App.Views.ShowNote extends Backbone.View
    template: JST['notes/show']

    className: 'li-note'

    events:
        'click .edit-note': 'showNote'

    render: ->
        @$el.html(@template(notey: @model))
        this

    showNote: ->
        Backbone.history.navigate(@model.url(), trigger: true)
        false
