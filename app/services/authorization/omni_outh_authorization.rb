require 'omniauth'

module OmniAuth
  module Strategies
    class BatabaseAuthorization
      include OmniAuth::Strategy


      option :fields, [:name, :email]
      option :uid_field, :email

      def request_phase
        binding.pry
      end
    end
  end
end