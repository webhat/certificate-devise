describe 'test certs' do
	it 'should' do
		require 'openssl'

		ca = OpenSSL::X509::Certificate.new(File.read('ssl/demoCA/cacert.pem'))

		lic = OpenSSL::X509::Certificate.new(File.read('ssl/newcert.pem'))

		expect(lic.issuer.to_s).to eq ca.subject.to_s
		expect(lic.verify( ca.public_key )).to eq true
	end

	it 'should have a valid p12' do
		ca = OpenSSL::X509::Certificate.new(File.read('ssl/demoCA/cacert.pem'))
		pkey = OpenSSL::X509::Certificate.new(File.read('ssl/newcert.pem'))
		p12 = OpenSSL::PKCS12.new(File.read('ssl/browser_certificate.p12'), 'test')
		#p p12.certificate
		expect(p12.certificate.issuer.to_s).to eq ca.subject.to_s
		expect(p12.certificate.subject.to_s).to eq pkey.subject.to_s
	end
end

