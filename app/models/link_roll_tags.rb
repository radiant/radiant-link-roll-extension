module LinkRollTags
  include Radiant::Taggable

  tag 'links' do |tag|
    tag.expand
  end

  tag 'links:each' do |tag|
    result = []
    Link.find(:all, :order => 'title ASC').each do |link|
      tag.locals.link = link
      result << tag.expand
    end
    result
  end

  tag 'links:each:link' do |tag|
    link = tag.locals.link
    %{<a href="#{link.url}" title="#{link.description}">#{link.title}</a>}
  end
end
