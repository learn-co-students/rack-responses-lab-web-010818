require 'time'

class Application

  def call(env)
    resp = Rack::Response.new

    noon = Time.parse "12:00 pm"
    current_time = Time.now

    if noon > current_time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
