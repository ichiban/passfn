require 'openssl'

module Passfn
  class Generator
    class << self
      def perform(domain, passphrase)
        @digest ||= OpenSSL::Digest.new('sha256')
        hmac = OpenSSL::HMAC.digest(@digest, domain, passphrase)
        password = ''
        hmac.each_byte do |byte|
          password += Passfn::ALPHABETS[byte % Passfn::ALPHABETS.size]
        end
        password
      end
    end
  end
end
