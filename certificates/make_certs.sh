openssl req -new -newkey rsa:4096 -nodes -keyout private_key.txt -out csr.txt -subj "/C=US/ST=Virginia/L=Chesterfield/O=MyInternetCompanyLTD/CN=localhost"
openssl x509 -req -sha256 -days 365 -in csr.txt -signkey private_key.txt -out certificate.txt -extensions req_ext
