# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class LinkRollExtension < Radiant::Extension
  version "1.0"
  description "Allows you to add a link roll to your Web site."
  url "http://dev.radiantcms.org/radiant/browser/trunk/extensions/link_roll/"
  
  define_routes do |map|
    map.connect 'admin/links/:action', :controller => 'admin/links'
  end
  
  def activate
    admin.tabs.add "Links", "/admin/links", :before => "Layouts"
    Page.send :include, LinkRollTags
  end
  
  def deactivate
    admin.tabs.remove "Links"
  end
  
end