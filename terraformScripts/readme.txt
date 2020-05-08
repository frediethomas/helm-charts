helmdeploy.tf
---------------
steps to run this on a glcoud shell

1. open shell having a cluster attached.if no cluster,create and then connect to it

2. since terraform comes preinstalled with gcloud dontwant to install.else install terraform

3. create a folder with desired required .tf scripts.All scripts with .tf would be executed.

4.terraform init (only one time required if the scripts havent changed with new providers)

5. terraform plan -will show the details to be implemented.no actual execution. 

6. run "terraform apply --auto-approve"
      pods will get applied..if timeout..re run..
    
7. run "terraform destroy --auto-approve"
      will remove all the resources created during apply.
