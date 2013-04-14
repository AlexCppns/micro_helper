require "microformats-helper/version"

module MicroformatsHelper
  module Helper


    PROP_TYPE_BASE_URL = "http://data-vocabulary.org/"

    def generate_microformats(container,props,childs=nil)


      "#{span_outer(container)}#{parse_props(props)}#{childs}#{span_end}".html_safe
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

    def span_end
      "</span>"
    end

    def span(key,content)
      "<span style='display:none' itemprop='#{key.to_s}' #{parse_content(content)}>"

    end

    def parse_content(content)
      "content='#{content}'" if content
    end

    def parse_props(props)
      html=""
      props.each do |key,prop|

        html+="#{span(key,prop[:content])}#{prop[:value]}#{span_end}"
      end
      return html
    end

    def type_prop(type)
      "itemscope itemtype='#{type_url(type)}'"
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include MicroformatsHelper::Helper
end
