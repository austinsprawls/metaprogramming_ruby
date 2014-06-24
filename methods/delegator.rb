require 'delegate'

class Assistant
  def initialize(name)
    @name = name
  end

  def read_email
    "(#{@name}) It's mostly spam."
  end

  def check_schedule
    "(#{name}) You have a meeting today."
  end
end

class Manager < DelegateClass(Assistant)
  def initialize(assistant)
    super(assistant)
  end

  def attend_meeting
    "Please hold my calls."
  end
end

frank = Assistant.new("Frank")
anne = Manager.new(frank)
anne.attend_meeting #=> "Please hold my calls."
anne.read_email #=> (Frank) It's mostly spam.
anne.check_schedule #=> (Frank) You have a meeting today.
