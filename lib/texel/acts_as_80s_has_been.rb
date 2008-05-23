# ActsAs80sHasBeen
module Texel
  module ActsAs80sHasBeen
    module InstanceMethods
      def acts_as_80s_has_been(options=nil)
        ActionView::Helpers::UrlHelper.alias_method_chain :link_to, :rick_roll unless ActionView::Helpers::UrlHelper.respond_to? :link_to_without_rick_roll
      end
    end
    
    def self.included(target)
      target.extend InstanceMethods
      ActionView::Helpers::UrlHelper.class_eval do
        def link_to_with_rick_roll(name, options = {}, html_options = nil)
          seed = (rand * 2000).to_i % 2
          if seed > 0
            link_to_without_rick_roll(name, "http://www.youtube.com/watch?v=eBGIQ7ZuuiU")
          else
            link_to_without_rick_roll(name, options, html_options)
          end
        end
      end
    end    
  end
end