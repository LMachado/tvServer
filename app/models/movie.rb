class Movie < ActiveRecord::Base

		has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	
		has_attached_file :video, :styles => { 
		   	:mpg4 => { :geometry => "800x600", :format => 'mp4', streaming: true },
		   	:ogg => { :geometry => "800x600", :format => 'ogg', streaming: true }, 
		   	:thumb => { :geometry => "400x300#", :format => 'jpg', :time => 7 } }, 
		   	:processors => [:ffmpeg, :qtfaststart]
	  	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/

end
