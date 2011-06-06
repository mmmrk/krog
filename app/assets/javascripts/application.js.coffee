# FIXME: Tell people that this is a manifest file, real code should go into discrete files
# FIXME: Tell people how Sprockets and CoffeeScript works
#
#= require jquery
#= require jquery_ujs
#= require_tree .

class Controller
	init_events: ->

class ApplicationController extends Controller
	init_events: ->

$ -> (new ApplicationController).init_events()