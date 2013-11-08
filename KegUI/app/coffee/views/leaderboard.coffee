View = require('coffee/views/view')
DrinkersPours = require('coffee/collections/drinkers_pours')

class LeaderboardView extends View
  className: 'spanning-full table-view'
  template: require('html/leaderboard')

  initialize: ->
    @collection = new DrinkersPours

  getRenderData: ->
    drinkers: @collection.toJSON()

  postRender: ->
    @collection.fetch().done(@render)


module.exports = LeaderboardView
