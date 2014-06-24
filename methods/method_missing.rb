class Lawyer; end

nick = Lawyer.new
nick.talk_simple #=> NoMethodError: undefined method "talk_simple"
nick.send :method_missing, :my_method #=> NoMethodError
