require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Blog
  class Application < Rails::Application

    # disqus
    Disqus::defaults[:container_id]   = 'disqus_thread', # desired thread container
    Disqus::defaults[:avatar_size]    = 24, # squared pixel size of avatars
    Disqus::defaults[:color]          = 'grey', # theme color
    Disqus::defaults[:account] = 'railswithprem'
    Disqus::defaults[:developer] = true # if you want to test it on the localhost

    config.assets.initialize_on_precompile = false
    config.assets.precompile += %w(coderay.css.sass)

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # parameters by using an attr_accessible or attr_protected declaration.
    config.active_record.whitelist_attributes = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end
