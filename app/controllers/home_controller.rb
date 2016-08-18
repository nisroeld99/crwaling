class HomeController < ApplicationController
  def index
    @t = Title.all
    
     
      @c = Count.last
    
  end

  def save
    
    @cnt = 0 ;
    require 'open-uri'
    1.upto(1).each do |u|
      doc = Nokogiri::HTML(open("http://www.pgr21.com/pb/pb.php?id=humor&page=#{u}"))
      doc.css(".tdsub//a").each do |x|
        t = Title.new
        t.name = x.inner_text if x.inner_text.include?("오버워치")
        @cnt += 1  if x.inner_text.include?("오버워치")
        t.save
        
      end
    end
    c = Count.new 
    c.cnt = @cnt 
    c.save 
     
    redirect_to :back
  end
end
