window.UpcaseBackbone =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> alert 'Hello from Backbone!'

window.App = window.UpcaseBackbone

$(document).ready ->
  UpcaseBackbone.initialize()
