#encoding: UTF-8
module ApplicationHelper
  
  def language_selecotr
    if I18n.locale == :en
      link_to "Chinese", url_for(:locale => 'cn')
    else
      link_to "英 语", url_for(:locale => 'en')
    end
  end
  
end
