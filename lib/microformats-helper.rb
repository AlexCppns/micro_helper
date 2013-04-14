require "microformats-helper/version"

module MicroformatsHelper
  module Helper


    PROP_TYPE_BASE_URL = "http://data-vocabulary.org/"

    def generate_microformats(container,props={},childs)

      "#{span_outer(container)}#{process(props)}#{childs}#{span_end}".html_safe
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

    def process(props)

      props.each do |key,props|
        "#{span(key,props[:content])}#{props[:value]}#{span_end}"
      end
    end

    def type_prop(type)
      "itemscope itemtype='#{type_url(type)}'"
    end
  end
end
