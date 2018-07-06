require_relative "task"

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def create_new_task
    # 1. ask user what name for new task
    title = @view.ask_for_title
    # 2. Create a new Task
    task = Task.new(title)
    # 3. send new Task to the repo
    @repository.add(task)
  end

  def list_all_tasks
    # 1. get all the tasks from the repo
    tasks = @repository.all
    # 2. send the array to a view method that lists
    @view.list_tasks(tasks)
  end

  def mark_task_as_completed
    # list first all tasks
    list_all_tasks
    # 1. ask for which (index - 1)
    i = @view.ask_for_index
    # 2. use the repo to find the right task
    task = @repository.find(i)
    # 3. use `mark_as_complete` on that Task
    task.mark_as_complete
  end
end






