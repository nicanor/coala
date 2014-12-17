module ApplicationHelper

  def flash_message_tag(type, message)
    flash.discard(type)
    content_tag :div, class: [:alert, "alert-#{type}"] do
      concat link_to("&times;".html_safe, "", class: :close, data: { dismiss: :alert })
      concat message
    end
  end

  def flash_messages
    capture do
      flash.map { |type, msj| concat flash_message_tag(type, msj) }
    end
  end

  def icon(name)
    content_tag :i, nil, class: "fa fa-#{name}"
  end

  def custom_form_for(object, *args, &block)
    options = args.extract_options!
    options[:wrapper] = :bootstrap3
    options[:defaults] = {input_html: {class: :'form-control'}}
    simple_form_for(object, *(args << options), &block)
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
