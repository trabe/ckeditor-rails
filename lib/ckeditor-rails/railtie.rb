module Ckeditor
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'configure assets of ckeditor', :group => :all do |app|
        %w( ckeditor/*.js ckeditor/*.css ).each do |asset|
          app.config.assets.precompile << asset
        end
      end
    end
  end
end
