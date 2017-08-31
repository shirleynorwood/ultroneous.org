module Jekyll
  class RenderMarginNoteTag < Liquid::Tag

    require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
      @num = rand(10**9)
    end

    def render(context)
      "<label for='mn-#{@num}' class='margin-toggle'> &#8853;</label><input type='checkbox' id='mn-#{@num}' class='margin-toggle'/><span class='marginnote'>#{@text[0]} </span>"
    end
  end
end

Liquid::Template.register_tag('marginnote', Jekyll::RenderMarginNoteTag)

