# Initialize dev
cd $1/dev && terraform init -input=false

# initialize test
cd $1/test && terraform init -input=false

# initialize prod
cd $1/prod && terraform init -input=false

# initialize global
cd $1/global && terraform init -input=false
