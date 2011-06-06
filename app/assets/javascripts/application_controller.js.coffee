class Controller
	init_events: ->

class ApplicationController extends Controller
	init_events: ->

$ -> (new ApplicationController).init_events()