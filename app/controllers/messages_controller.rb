class MessagesController < ApplicationController
  def new

  end

  def create
    subject = params[:subject]
    content = params[:body]
    MessageMailer.perform(subject, content).deliver

    render js: "alert(`messsage submit!`)"
  end
end
