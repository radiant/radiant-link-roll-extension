# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class LinkRollExtension < Radiant::Extension
  version "1.0"
  description "Allows you to add a link roll to your website"
  url "http://github.com/radiant/radiant-link-roll-extension"
  
  define_routes do |map|
    map.with_options(:controller => 'admin/links') do |link|
      link.link_index   'admin/links',              :action => 'index'
      link.link_new     'admin/links/new',          :action => 'new'
      link.link_edit    'admin/links/edit/:id',     :action => 'edit'
      link.link_remove  'admin/links/remove/:id',   :action => 'remove'
    end
  end
  
  def activate
     admin.tabs.add 'Links', "/admin/links", :after => 'Pages'
     Page.send :include, LinkRollTags
  end
  
  def deactivate
    # admin.tabs.remove "Link Roll"
  end
  
end