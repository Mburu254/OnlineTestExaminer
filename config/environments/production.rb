Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send.
  config.mandrill_mailer.default_url_options = { :host => ' https://protected-chamber-1068.herokuapp.com/ ' }
  config.action_mailer.default_url_options = { :host => ' https://protected-chamber-1068.herokuapp.com/ ' }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default :charset => "utf-8"

  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.mandrillapp.com",
    :port                 => 587,
    :user_name            => "bernard.adarkwah@meltwater.org",
    :password             => "WH2Q0VWWdB7J1yHrsfFi6Q",
    :authentication       => "plain",
    :enable_starttls_auto => true
  }

#   config.action_mailer.default_url_options = { :host => 'https://protected-chamber-1068.herokuapp.com' }
#   config.action_mailer.delivery_method = :smtp
#   config.action_mailer.perform_deliveries = true
#   config.action_mailer.raise_delivery_errors = false
#   config.action_mailer.default :charset => "utf-8"
#   config.action_mailer.smtp_settings = {
#   address: "smtp.gmail.com",
#   port: 587,
#   domain: "https://protected-chamber-1068.herokuapp.com",
#   authentication: "plain",
#   enable_starttls_auto: true,
#   user_name: "isaac.yeboah@meltwater.org",
#   password: "editor11.meltwater"
# }

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
