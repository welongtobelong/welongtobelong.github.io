# vim: set et sw=4 ts=4 ff=unix ft=ruby :

# A filter to fix Jekyll 3's broken permalink handling
# See:
#  - https://github.com/jekyll/jekyll/issues/4440
#  - https://github.com/jekyll/jekyll/issues/6709
module TextFilter
    def fix_permalink(url)
        url.sub(/([^\/])$/, '\1/')
    end
end

Liquid::Template.register_filter(TextFilter)
