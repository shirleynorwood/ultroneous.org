module Jekyll
  class RenderSideNoteTag < Liquid::Tag

    require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
      @num = rand(10**9)
    end

    def render(context)
      "<label for='sn-#{@num}' class='margin-toggle sidenote-number'></label><input type='checkbox' id='sn-#{@num}' class='margin-toggle'/><span class='sidenote'>#{@text[0]} </span>"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::RenderSideNoteTag)

