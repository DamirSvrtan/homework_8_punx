class ImporterController < ApplicationController
  def callback
    contacts = request.env['omnicontacts.contacts']
    contacts.each do |contact|
      puts "#{contact[:name]} | #{contact[:email]}"
    end
    render text: 'Check the console output.'
  end
end