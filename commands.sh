# first i need to create the s3 bucket
aws s3 mb s3://gopal-code-sam

#package cloudformation
aws cloudformation package --s3-bucket gopal-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

#deploy
aws cloudformation deploy --template-file C:\Users\gopal\OneDrive\Desktop\sam\gen\template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM --parameter-overrides IdentityNameParameter=xyz