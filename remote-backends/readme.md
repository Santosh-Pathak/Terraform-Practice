# remote-backend for terraform state(AWS)

-S3-bucket
-DynamoDB

The state of terraform which sits in middle of terraform and AWS instance is stored locally in the host/devops engineer system which create conflict when 2 or more people apply the same tf script simultaneoulsy. this create nuisance/bhasad in AWS which can result in unusual behavior of our AWS EC2 instance of any other infra state.
There fore, we use # remote-backend for terraform state(AWS) concept to store the state of AWS not locally rather stored over the clound in s3 and dynamodb, when any devops guys try to change the state of infra via tf script, a new entry is written in DynamoDB and S3 will lock the satate of AWS infra(ex Ec2) from conflicting from other devops guy.
This maintain single source of truth of a state of tf script. Help to reduce conflicts in AWS server
Single source of truth for all devops guys.

 