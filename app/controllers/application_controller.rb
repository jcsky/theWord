class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :setup_meta_tags

  protected

  def setup_meta_tags
    set_meta_tags title: 'TheWord 再見手札',
                   description: '快速完成器捐、安寧、喪葬意願和微遺言，親友輸入Email即可得知你的生前意願',
                   keywords: '器官捐贈, 安寧, 器捐, 喪葬, 生前意願, 遺言, 遺書, 遺囑, 再見手札, 臨終, 心肺復甦, 維生醫療, 呼吸器, 數位遺言, 器官, 心臟, 肺臟, 肝臟, 胰臟, 腎臟, 小腸, 眼角膜, 皮膚, 骨骼, 心瓣膜, 血管, 插管, 意外, 醫療訣擇, 無效醫療, 按壓, 急救, 末期, 癌症, 器官移植, 車禍, 緩和醫療, 安寧緩和, organ, donation, hospice, funeral' ,
                   author: 'jcskyting',
                   publisher: 'https://www.facebook.com/jcsky.wang',
                   og: {
                    title: '再見手札-最簡便的器官捐贈方式',
                    type: 'website',
                    url: 'theword.tw',
                    image: 'https://36.media.tumblr.com/5edc5f5d6dc61bfc61cf7a1cbc46473a/tumblr_neg9yek4Pm1srtr83o1_1280.jpg',
                    description: '快速完成器捐、安寧、喪葬意願和微遺言，親友輸入Email即可得知你的生前意願',
                    site_name: 'TheWord 再見手札'
                   },
                   fb: { admins: 'jcsky.wang', app_id: '836426963111446'}
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || theword_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
