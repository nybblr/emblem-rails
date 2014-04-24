require 'emblem/rails/template'

module Emblem
  module Rails
    class Engine < ::Rails::Engine
      initializer "emblem_rails.register", :after => :append_assets_path, :group => :all do |app|
        app.assets.register_engine '.emblem', Emblem::Rails::Template
      end
    end
  end
end
