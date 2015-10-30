# Description:
#   Hubot will do a trick to settle all of your disputes
#   Never toss a coin again.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot do a trick - hubot attempts a trick and either succeeds or fails

random = (min,max) ->
  Math.floor(Math.random() * (max - min + 1)) + min

description = [
  "a sick",
  "an insane",
  "a ballin ass",
  "a ridiculous",
  "a crazy",
  "a dangerous",
  "a mediocre",
  "a kind of lame",
  "an extreme",
  "a one of a kind"
]

trick = [
  "540 backflip",
  "frontflip tailgrab",
  "juggling move",
  "360 varial heelflip",
  "motorcycle bus jump",
  "yo yo trick",
  "fireball throw",
  "barehanded brick smash",
  "first try USB insertion",
  "naked skydive",
  "pelvic thrust"
]

result = [
  "nails it.",
  "dies.",
  "does a pretty good job.",
  "fails miserably.",
  "it's perfect.",
  "does such a terrible job that he leaves his family out of shame.",
  "does such a great job he writes a song about it."
]

doTrick = -> "attempts " +
  description[random(0,description.length-1)] + " " +
  trick[random(0,trick.length-1)] + " and " +
  result[random(0,result.length-1)]

module.exports = (robot) ->
  robot.respond /do a (trick|barrel roll)/i, (msg) ->
    msg.emote doTrick()