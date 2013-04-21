require "micro_helper/version"
require "actionpack"

module MicroHelper



  PROP_TYPE_BASE_URL = "http://data-vocabulary.org/"


  def generate_microformats(container,props,childs=nil)

    "#{span_outer(container)}#{parse_props(props)}#{childs}</span>".html_safe
  end


  def microformats(container,props,childs=nil)

    generate_microformats(container,props,childs)
  end


  def og_for(type,value,namespace="og")

    content_for type do

      meta_tag("#{namespace}:#{type}",value)
    end
  end


  def og_tag(type,value,namespace="og")

    meta_tag("#{namespace}:#{type}",value)
  end


  def meta_tag(property,value)

    "<meta property='#{property}' content='#{value}'>".html_safe
  end


  def type_url(type)

    "#{PROP_TYPE_BASE_URL}#{type}"
  end


  def span_outer(container)

    "<span style='display:none' #{parse_itemprop(container[:itemprop])} #{type_prop(container[:type])}>"
  end


  def parse_itemprop(itemprop)

    "itemprop='#{itemprop}'" if itemprop
  end


  def span(key,content)

    "<span itemprop='#{key.to_s}' #{parse_content(content)}>"
  end


  def parse_content(content)

    "content='#{content}'" if content
  end


  def parse_props(props)

    html=""

    props.each do |key,prop|

      html+="#{span(key,prop[:content])}#{prop[:value]}</span>"
    end

    return html
  end

  def type_prop(type)

    "itemscope itemtype='#{type_url(type)}'"
  end

end

ActiveSupport.on_load(:action_view) do

  include MicroHelper
end
