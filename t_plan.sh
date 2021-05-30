# Plan dev
cd $1/dev && terraform plan -out tfapply

# Plan test
cd $1/test && terraform plan -out tfapply

# Plan prod
cd $1/prod && terraform plan -out tfapply

# Plan global
cd $1/global && terraform plan -out tfapply
