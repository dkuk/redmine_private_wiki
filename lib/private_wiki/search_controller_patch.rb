
module PrivateWiki
  module SearchControllerPatch
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.class_eval do
        alias_method_chain :index, :private_wiki
      end
    end
    module InstanceMethods
      def index_with_private_wiki
        index_without_private_wiki
        if @results.present?
          res = []
          @results.each do |result|
            if result.is_a?(WikiPage) && result.private && !result.private_page_visible?(@project, User.current) && !User.current.admin?
              @results_by_type['WikiPage'] -= 1
            else
              res << result
            end
          end
          @results = res
        end
      end
    end
  end
end