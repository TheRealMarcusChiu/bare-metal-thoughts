#! /bin/bash

ssh -i ~/.ssh/keys/aws-marcuschiu.pem ec2-user@www.marcuschiu.com << EOF
  rm -rf bare-metal-thoughts/
  mkdir bare-metal-thoughts
EOF

scp -i ~/.ssh/keys/aws-marcuschiu.pem -r ./public ec2-user@www.marcuschiu.com:~/bare-metal-thoughts