# vim: set et sw=4 ts=4 ff=unix ft=ruby :

# A filter to fix Jekyll 3's broken permalink handling
# See:
#  - https://github.com/jekyll/jekyll/issues/4440
#  - https://github.com/jekyll/jekyll/issues/6709
Jekyll::Hooks.register :posts, :pre_render do |post|
    # code to call before Jekyll renders a post
    post.data['permalink'] = post.data['permalink'].sub(/([^\/])$/, '\1/')
end
Jekyll::Hooks.register :documents, :pre_render do |doc|
    # code to call before Jekyll renders a post
    doc.data['permalink'] = doc.data['permalink'].sub(/([^\/])$/, '\1/')
end
Jekyll::Hooks.register :pages, :pre_render do |page|
    # code to call before Jekyll renders a post
    page.data['permalink'] = page.data['permalink'].sub(/([^\/])$/, '\1/')
end
