class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'ระบบได้รับข้อความของคุณเรียบร้อยแล้ว เราจะติดต่อกลับอีกครั้ง ขอบคุณค่ะ'
    else
      flash.now[:error] = 'ไม่สามารถส่งข้อความได้ กรุณาลองใหม่อีกครั้ง'
      render :new
    end
  end
end