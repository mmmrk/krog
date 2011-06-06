module ApplicationHelper
	def han (name)
		result = name.split "."
		raise ArgumentError, "Too many or too few dots in name" unless result.length == 2
		cls = result.first.classify.constantize
		cls.human_attribute_name result.second
	end
end