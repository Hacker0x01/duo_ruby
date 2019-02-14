module Duo
  class Engine < ::Rails::Engine
    initializer 'duo_web.assets.precompile' do |app|
      %w(javascripts).each do |sub|
        app.config.assets.paths << root.join('lib', 'assets', sub).to_s
      end
    end
  end
end
