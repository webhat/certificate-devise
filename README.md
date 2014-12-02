# Certificate Devise

# This does NOT WORK! DON'T USE IT FOR ANY REASON

This is a [Devise](https://github.com/plataformatec/devise) extension to add Certificate to your rails application.

[pkcs11](https://github.com/larskanis/pkcs11)
[SoftHSMv2](https://github.com/opendnssec/SoftHSMv2)

The framework was taken from [Device Authy](https://github.com/authy/authy-devise)

Source: [SSL Client Auth in Rails](https://danq.me/projects/ssl-client-certificate-authentication-in-ruby-on-rails/)

# Creating Default Certificates
```
	perl CA.pl -newca
	perl CA.pl -newreq
	openssl rsa -in newkey.pem -out newkey.pem
	perl CA.pl -sign
	openssl pkcs12 -export -in newcert.pem -inkey newkey.pem -out browser_certificate.p12
```
