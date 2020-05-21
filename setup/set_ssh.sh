cd
ssh-keygen
cat > ~/.ssh/authorized_keys <<"EOF"
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5WwDCIDJMxz8uTXBpX1+Edd4EMczlm6DVKndFIFjL2rFz+aQfhsreNhVSerblTC1hhT8vt/Bfa6myEEMoVRyL/CoUYBsMsigF4YEwo724dKrX3k8C6RcHl5z8EMK6HFm4tr6M6a55ouMpjUzNiwSFDrG+3HYx+J+hQi9NbHTcKeMQ58Yb6SjNA9g6+Yy6MJ3mzbRcgkwtgRcAqo+H3KqsIk/w+9GVSMB7RFu5GyGwWxf3gUTBeOol6QWo05KJJZPNmYbQmhMyKNOmz/9PJrq9jOHYDlkOMagdX1uVLsU4ZMsUJ4j5j5sMGkij6NWJgqPuAUFJXba/KNZbILfOsk8z liuqingchang@Gua.local
EOF
chmod 600 ./ssh/authorized_keys
echo "AllowUsers root" >> /etc/ssh/sshd_config 
service sshd restart
