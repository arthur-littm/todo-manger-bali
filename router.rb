class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do

      puts "What do you want to do?"
      puts "1 - Create a new task"
      puts "2 - List all the tasks"
      puts "3 - Mark one task as completed"
      choice = gets.chomp.to_i

      print `clear`

      if choice == 1
        @controller.create_new_task
      elsif choice == 2
        @controller.list_all_tasks
      elsif choice == 3
        @controller.mark_task_as_completed
      else
        puts "Wrong input..."
      end

    end
  end
end

