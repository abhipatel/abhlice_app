class App.Routers.AppRouter extends Backbone.Router
  initialize: (options) ->
    Backbone.history.start
      pushState: true

  routes:
    "" : "HomePage"

  HomePage: ->
    @HomePageView ||= new App.Views.HomePageView()