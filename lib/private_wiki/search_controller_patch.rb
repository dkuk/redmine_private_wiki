
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
        if @results != nil
                  @results.each{ |result|	
                        if result.class == WikiPage and result.private and !result.private_page_visible?(@project, User.current)
                                @results.delete(result)
                                @results_by_type['WikiPage']-=1
                        end	
                        }	
          #@results.delete_if do |result|
          #  result.class == WikiPage and result.private and !result.is_private_page_visible?(@project)
          #end
        end	
      end	
    end	
  end	
end