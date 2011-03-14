class DownloadsController < ActionController::Base
  def light_rail_map
    send_file "#{RAILS_ROOT}/public/light_rail_map.pdf", :type=>"application/pdf"
  end

end

