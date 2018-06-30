class QrcodeController < ApplicationController

	def qrcode_encode
		require 'rqrcode'
		key = rand(36**10).to_s(36)
		qrcode = RQRCode::QRCode.new("http://github.com/")
		@qr = RQRCode::QRCode.new( key, :size => 6, :level => :h )
	  
	  	respond_to do |format|
	   	 format.html { render "qrcode/showpage" }
		end
	end

end