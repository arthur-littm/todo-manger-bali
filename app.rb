require_relative "controller"
require_relative "repository"
require_relative "view"
require_relative "router"

repo = Repository.new

view = View.new

controller = Controller.new(view, repo)

router = Router.new(controller)

router.run
