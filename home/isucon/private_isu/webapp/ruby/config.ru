require_relative './app.rb'
require 'logger'
require 'applog'

run Isuconp::App


logdir = File.dirname(__FILE__) + "/logs"
logger = ::Logger.new(logdir + '/app.log')

def logger.write(msg)
  self << msg
end

use AppLog, logger

run App
