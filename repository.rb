class Repository
  # STATE
  def initialize
    @tasks = [] # Array of `Task` instances
  end

  # BEHAVIOR
  def add(task)
    @tasks << task # `Task` instance
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
end
