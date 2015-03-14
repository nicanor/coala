module ApplicationHelper

  def flash_message(klass, message)
    klass = 'success' if klass == 'notice' || klass == 'alert'
    flash.discard(klass)
    content_tag :span, nil, class: "flash-alert flash-alert-#{klass}", data: {toggle: :snackbar, content: message}
  end

  def flash_messages
    flash.map do |type, message|
      flash_message(type, message)
    end.join.html_safe
  end

  def icon(name, html_options={})
    html_options[:class] = ['fa', "fa-#{name}", html_options[:class]].compact
    content_tag(:i, nil, html_options)
  end

  def facebook_url
    'https://www.facebook.com/activismo.coala'
  end

  def section(name)
    partial = File.join('application', 'home', name)
    content_tag :section, id: name, class: 'home-section' do
      content_tag :div, class: :container do
        render partial
      end
    end
  end

  def earthlings_url
    'https://youtube.googleapis.com/v/PRrH6Ml5IDU'
  end

end
