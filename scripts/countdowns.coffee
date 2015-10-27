# Description:
#   Stuff happening soon
#
# Dependencies:
#   "moment": "2.8.3",
#
# Configuration:
#   None
#
# Commands:
#   elvis give camp - Display a countdown til givecamp starts

moment = require('moment')

module.exports = (robot) ->

###########################
# plumbing
###########################

  humanDate = (dateStamp) ->
    moment(dateStamp).calendar()

  timeUntil = (dateStamp) ->
    moment(dateStamp).fromNow()

  daysUntil = (dateStamp) ->
    moment(dateStamp).diff(moment(), 'days')

  countdownTo = (args) ->
    robot.respond args.trigger, (msg) ->
      msg.send [
        args.title,
        "happens in #{daysUntil(args.date)} days",
        "(#{humanDate(args.date)})",
        args.link
      ].join(' ')


  ###########################
  # Countdowns!
  ###########################
  # timestamp docs: http://momentjs.com/docs/

  countdownTo
    title:    "Thanksgiving Extravaganza"
    date:     '2015-11-21 18:00'
    link:     "http://www.thanksgiving.com/"
    trigger:  /thanksgiving|extravaganza|thanksgiving extravaganza/i

  countdownTo
    title:    "Christmas"
    date:     '2015-12-25'
    trigger:  /days until christmas|christmas/i