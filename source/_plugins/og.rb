require "rack/utils"
require "rubypants"

module Jekyll
  module OpenGraphFilters

    def og_type(input)
      defaults = {
        'home' => 'website',
        'post' => 'article'
      }
      settings = {} # todo: need to read this from _config.yml
      translate = defaults.merge(settings)
      translate.has_key?(input) ? translate[input] : "website"
    end

    def og_escape_html(input)
      Rack::Utils.escape_html(input)
    end

    def og_educate(input)
      RubyPants.new(input).to_html
    end

    def og_uneducate(input)
      input = input.gsub(/[”“]/, '"')
      input = input.gsub(/[‘’]/, "'")
    end

  end
end

Liquid::Template.register_filter(Jekyll::OpenGraphFilters)
