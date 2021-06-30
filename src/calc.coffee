# Description:
#   Simple JS Calculator
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot calculate me <equation> - calculate simple maths
#   expr <equation> - calculate simple maths
#
# Author:
#   mrinjamul <mrinjamul@gmail.com>

module.exports = (robot) ->
  robot.respond /(calc|calculate|calculator|math|maths)( me)? (.*)/i, (msg) ->
    msg.send eval(msg.match[2])+''

  robot.hear /expr (.*)/i, (msg) ->
    msg.send eval(msg.match[1])+''

