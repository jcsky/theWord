module WelcomeHelper
  require 'json'
  def youtube (aaaaa)
    %Q(<iframe width="100%" height="310" src="//www.youtube.com/embed/#{aaaaa}" frameborder="0" allowfullscreen></iframe>)
  end
  def load_json_file( filepath )
    JSON.parse( File.read(filepath) )
  end
  def faq()
    organfaq = load_json_file("#{Rails.root}/public/OrganFAQ.json")
    ofaq = ""
    keycount = 0
    organfaq.each{|key,value|
      ofaq << %Q(<h3 class="margin-top-30">#{key}</h3>)
      value.each{|key2,value2|
        keycount += 1
        ofaq << %Q(
              <div class="panel-group acc-v1" id="accordion">
                  <div class="panel panel-default">
                      <div class="panel-heading">
                          <h4 class="panel-title">
                              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse#{keycount}">
                                  <strong>Q. #{key2}</strong>
                              </a>
                          </h4>
                      </div>
                      <div id="collapse#{keycount}" class="panel-collapse collapse answer">
                          <div class="panel-body">
                              #{value2}
                          </div>
                      </div>
                  </div>
              </div>
          )

      }
    }
    ofaq
  end


end
