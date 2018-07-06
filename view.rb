class View

  def ask_for_title
    puts "What name?"
    print "> "
    return gets.chomp
  end

  def ask_for_index
    puts "What number?"
    print "> "
    index = gets.chomp.to_i - 1
    return index
  end

  def list_tasks(tasks)
    tasks.each_with_index do |task, index|
      # 1 - [x] laundry
      # 2 - [ ] shopping
      # if task.completed?
      #   cross = "X"
      # else
      #   cross = " "
      # end
      cross = task.completed? ? "X" : " "
      puts "#{index + 1} - [#{cross}] #{task.name}"
    end
  end

end

# Task
