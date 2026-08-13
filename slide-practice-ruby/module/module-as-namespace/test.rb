require_relative "gym"
require_relative "dojo"
dojo_push = Dojo::Push.new
p dojo_push.up #=> 30
gym_push = Gym::Push.new
p gym_push.up #=> 40