require 'omniauth'

module OmniAuth
  module Strategies
    class DatabaseAuth
      include OmniAuth::Strategy

      option :fields, [:name, :email]
      option :uid_field, :email
      puts  "SAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa"
      binding.pry
      def request_phase
        binding.pry
        form = OmniAuth::Form.new(:title => 'User Info', :url => callback_path)
        options.fields.each do |field|
          form.text_field field.to_s.capitalize.gsub('_', ' '), field.to_s
        end
        form.button 'Sign In'
        form.to_response
      end

      uid do
        request.params[options.uid_field.to_s]
      end

      info do
        options.fields.inject({}) do |hash, field|
          hash[field] = request.params[field.to_s]
          hash
        end
      end
    end
  end
end