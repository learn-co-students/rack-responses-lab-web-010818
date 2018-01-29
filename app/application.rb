class Application

  def call(env)
    resp = Rack::Response.new
    hour = Time.now.strftime("%H")
    #24 hour clock

    if hour.to_i >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
