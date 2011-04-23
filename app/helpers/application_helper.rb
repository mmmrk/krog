module ApplicationHelper	
	# def link_to_hide_advanced_fields (name, form)
	# 	form.hidden_field(:_destroy) + link_to_function(name, "hide_advanced_fields()")
	# end
	# 
	# def link_to_show_advanced_fields (name, form, association)
	# 	# new_object = form.object.class.reflect_on_association(association).klass.new
	# 	# 
	# 	# fields = form.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
	# 	# 	render(association.to_s.singularize + "_fields", :form => builder)
	# 	# end
	# 	
	# 	link_to_function(name, "show_advanced_fields()", :id => "show_advanced_fields")
	# end  
	
	def link_to_toggle_advanced_fields (name)
		link_to_function(name, "toggle_advanced_fields()", :id => "toggle_advanced_fields")
	end
	
	def link_to_show_advanced_fields (name)
		link_to_function(name, "show_advanced_fields()", :id => "show_advanced_fields")
	end
	
	def link_to_hide_advanced_fields (name)
		link_to_function(name, "hide_advanced_fields()", :id => "hide_advanced_fields")
	end
end