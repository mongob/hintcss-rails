require 'rails/generators'

module Hintcss
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../includes/", __FILE__)
      argument :stylesheets_type, :type => :string, :default => 'src'


      def add_hintcss
        copy_stylesheet(stylesheets_type)

        css_manifest = 'app/assets/stylesheets/application.css'
        if File.exist?(css_manifest)
          style_require_block = " *= require hintcss\n"
          insert_into_file css_manifest, style_require_block, :after => "require_self\n"
        else
          copy_file "application.css", "app/assets/stylesheets/application.css"
        end
      end

      private
      def copy_stylesheet(type)
        if type == 'src'
          copy_file "#{src}.css", "app/assets/stylesheets/hintcss.css"
        else
          raise "You must have supplied a wrong command:("
        end
      end
    end
  end
end