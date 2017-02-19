require "officesimplify/version"
require 'httparty'
require 'oj'

module Officesimplify
  class AuthenticationError < StandardError; end

  @@api_key = nil
  @@api_base = "https://www.officesimplify.com/api"

  def self.api_key=(api_key); @@api_key = api_key; end
  def self.api_key; @@api_key; end
  def self.api_base=(api_base); @@api_base = api_base; end
  def self.api_base; @@api_base; end

  def self.events(query)
    request('events', :get, query)
  end

  private
  def self.request(path, method, params = {})
    raise AuthenticationError.new("Please provide an API key") unless @@api_key
    response = HTTParty.send(method, "#{@@api_base}/#{path}", headers: headers, body: params)
    handle_response(response)
  end

  def self.headers
    { "Authorization" => "Token token=\"#{@@api_key}\"" }
  end

  def self.handle_response(response)
    case response.code
      when 200
        Oj.load(response.body)
      else
        raise StandardError.new('Something went wrong with the request')
      end
  end
end
