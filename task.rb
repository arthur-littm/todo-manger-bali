class Task
  attr_reader :name
  # STATE
  def initialize(name)
    @name = name
    @completed = false
  end

  # BEHAVIOR
  def mark_as_complete
    @completed = true
  end

  def completed?
    @completed
  end
end
