module Spina
  module MainNavigation
    class LinkComponent < ApplicationComponent
      include Spina::Admin::IconsHelper

      def initialize(label, path, active: false, icon: nil)
        @label = label
        @path = path
        @active = active
        @icon = icon && icon(icon)
      end

      def icon(icon_name)
        heroicon(icon_name, style: :solid, class: "inline-block w-8 h-8 text-white md:mr-3")
      end

      def css_classes
        if @active
          ""
        else
          "opacity-50"
        end
      end

    end
  end
end
