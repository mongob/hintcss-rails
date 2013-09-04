require 'rails/generators'

module Hintcss
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../includes/", __FILE__)
      argument :src  => 'src'


      def add_hintcss
        copy_stylesheet(src)

        css_manifest = 'app/assets/stylesheets/application.css'
        if File.exist?(css_manifest)
          style_require_block = " *= require hintcss\n"
          insert_into_file css_manifest, style_require_block, :after => "require_self\n"
        else
          copy_file "application.css", "app/assets/stylesheets/application.css"
        end
      end

      private
      def copy_stylesheet(css_src)
        if css_src == 'src'
          copy_file "#{src}.css", "app/assets/stylesheets/hintcss.css"
        else
          raise "You must have supplied a wrong command:("
        end
      end
    end
  end
end