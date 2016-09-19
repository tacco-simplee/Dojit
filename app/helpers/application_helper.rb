module ApplicationHelper
  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extension = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extension)
    (redcarpet.render text).html_safe
  end

  def my_name
    "Tom"
  end
end