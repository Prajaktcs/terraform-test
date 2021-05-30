# Initialize dev
cd ~/dev && terraform init -input=false

# initialize test
cd ~/test && terraform init -input=false

# initialize prod
cd ~/prod && terraform init -input=false

# initialize global
cd ~/global && terraform init -input=false
