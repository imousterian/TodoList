class App.Models.Note extends Backbone.Model
    validate: ->
        unless @hasTitle() or @hasContent()
            {title: "Must provide a title or content"}

    hasTitle: -> @hasAttribute('title')
    hasContent: -> @hasAttribute('content')

    hasAttribute: (attr) ->
        @has(attr) && @get(attr).trim() != ""
