# Plan dev
cd ~/dev && terraform plan -out tfapply

# Plan test
cd ~/test && terraform plan -out tfapply

# Plan prod
cd ~/prod && terraform plan -out tfapply

# Plan global
cd ~/global && terraform plan -out tfapply
