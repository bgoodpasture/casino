require 'pp'
require 'sendgrid-ruby'
include SendGrid

class HomeController < ApplicationController
  def index
  end

  def email
    pp(params)
    from = SendGrid::Email.new(email: params[:email])
    subject = 'new mail from '+ params[:firstname] + ' ' + params[:lastname]
    to = SendGrid::Email.new(email:'bgoodpasture@gmail.com')
    content = SendGrid::Content.new(type:'text/plain', value: params[:message])
    mail = SendGrid::Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key:ENV['SENDGRID_API_KEY'])
    puts 'SENDGRID'
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
    redirect_to '/'
  end
end
