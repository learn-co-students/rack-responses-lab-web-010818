class Application
	def call(env)
		resp = Rack::Response.new 
		current_time = Time.now 

		if current_time.hour >= 0 && current_time.hour <= 12
			resp.write "Good Morning"
			resp.write current_time
		else 
			resp.write "Good Afternoon!"
			resp.write current_time
		end 
		resp.finish

	end 
end 


#Time is an inheritted class variable
# hour is an inherrited class instance var
# write is an inheritted class instance var