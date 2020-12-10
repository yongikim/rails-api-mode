REDIS = if Rails.env.test?
          MockRedis.new
        elsif Rails.env.production?
          Redis.new(url: ENV['REDIS_URL'])
        else
          Redis.new(url: Settings.session.url)
        end
