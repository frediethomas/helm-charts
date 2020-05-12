:Steps to edit the repo once the repo is already present.
---------------------------------------
1.Helm repo for this is https://frediethomas.github.io/helm-charts
2.once we need any changes on this repository.
3. git clone this repo 
4. Be on the master branch and take a pull
5. edit the chart inside the helm-charts folder.
6. Once the editing is done we need to create the packages. For that on command prompt be on repo root location and perform 
   helm package helm-charts/* .              --dot is present
   Ensure you are not inside "helm-charts" folder.On success we will see pacakges created messages on command prompt.
7. Now we need generate the index file using :
  helm repo index --url https://frediethomas.github.io/helm-charts/ .         --dot is present
  
8. now git add & commit &push this to master using :
     git add . && git commit -m "redis" && git push origin master
     
9. Respectives changes should be now in the helm repo
