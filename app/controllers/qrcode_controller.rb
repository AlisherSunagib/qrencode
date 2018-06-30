class QrcodeController < ApplicationController

	def qrcode_encode


		if Attendance.find_by(date: Date.today) == nil
			Student.find_each() do |person|
				Attendance.create(studid: person.studid, date: Date.today, status: false)
			end
		end
		
		require 'rqrcode'
		key = rand(36**10).to_s(36)
		
		pass = Code.create(text: key, date: Time)
		

		qrcode = RQRCode::QRCode.new("http://github.com/")
		@qr = RQRCode::QRCode.new( key, :size => 6, :level => :h )
	  
	  	respond_to do |format|
	   	 format.html { render "qrcode/showpage" }
		end

		

	end
	

end