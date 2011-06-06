Dir[File.join(".", "lib", "core_extensions", "*.rb")].each do |file|
	require file
end