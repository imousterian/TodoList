class App.Views.ShowNote extends Backbone.View
    template: JST['notes/show']

    className: 'note'

    events:
        'change': 'save'
        'keydown .note-title': 'blurIfEnter'
        'focus .note-title, .note-content': 'beginEditing'
        'blur .note-title, .note-content': 'endEditing'
        'click .destroy-note': 'destroyNote'

    render: ->
        @$el.html(@template(notey: @model))
        this

    save: ->
        @model.set
            title: @$('.note-title').val()
            content: @$('.note-content').val()
        @model.save()
        false

    blurIfEnter: (e) ->
        if e.keyCode == 13
            @$(':input').blur()

    beginEditing: ->
        @$el.addClass('editing')

    endEditing: ->
        @$el.removeClass('editing')

    destroyNote: ->
        @model.destroy()
        @remove()
        false
