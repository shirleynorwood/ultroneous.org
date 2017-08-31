## Liquid tag 'maincolumn' used to add image data that fits within the main
## column area of the layout
## Usage {% marginfigure 'margin-id-whatever' 'path/to/image' 'This is the caption' %}
#
module Jekyll
  class RenderMarginFigureTag < Liquid::Tag

  	require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
      @num = rand(10**9)
    end

    def render(context)
      "<label for='mf-#{@num}' class='margin-toggle'>&#8853;</label>"+
      "<input type='checkbox' id='mf-#{@num}' class='margin-toggle'/>"+
      "<span class='marginnote'><img class='fullwidth' src='#{@text[0]}'/><br>#{@text[1]}</span>"
    end
  end
end

Liquid::Template.register_tag('marginfigure', Jekyll::RenderMarginFigureTag)
