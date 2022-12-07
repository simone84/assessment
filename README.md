# AssesmenT

* Build a mysql instance with a cutomised database with 2 tables

## GitHub Action Solution

* Requires a github account only

* Requires artifactory (dockerhub, jfrog, any registry)

```
pipeline=.github/workflows/mysql.yml

What the pipeline does:
- generate temp env varibles;
- clone the repo;
- download the latest version of the public image;
- run a mysql container setting up a root password;
- take 15 sec break to allow mysql to open connections;
- run the script.sql to initialiate a new database, build and fill the 2 tables;
- run the test.sql to query and join some record;
- login on artifactory;
- tag and push the new image on artifactory;
- the img repository is scanned automatically by XRay (if jfrog) >>> check the screnshoot below;
- you can check eventual vulnerabilities and vendor fix (if jfrog) >>> check the screnshoot below.
```

![alt text](https://github.com/simone84/assesment/blob/main/screnshot/xrayscan1.png?raw=true)

![alt text](https://github.com/simone84/assesment/blob/main/screnshot/xrayscan2.png?raw=true)

![alt text](https://github.com/simone84/assesment/blob/main/screnshot/xrayvulnerabilities.png?raw=true)

* Mandatory Customization (env variables):

| Parameter  | Secret | Default | Note                      |
| ---------- | ------ | ------- | ------------------------- |
| dbpassword | true   | false   | stored as repo secret     |
| token      | true   | false   | stored as repo secret     |
| user       | true   | false   | stored as repo secret     |
| registry   | true   | false   | stored as repo secret     |
| repo       | false  | img     | to setup on your registry |

* Run "Docker and MySql DB" workflow on demand from your Github Account (workflow parameters):

| Parameter | Default |
| --------- | ------- |
| branch    | main    |
| tag       | v1.1    |

![alt text](https://github.com/simone84/assesment/blob/main/screnshot/workflow1.png?raw=true)

* GitHub Action gives the most flexible, fast and low cost solution. The build doesn't take end to end more than half minute:

- no systems required

- charges only for time consuming and this build is fast

- all the secrets are never exposed

## With Jenkins CICD

* Requires a Jenkins Instance, ideally with docker agents

* Requires a github account

* Requires artifactory (dockerhub, jfrog, any registry)

```
pipeline=Jenkinsfile

What the pipeline does:
- clone the repository with creds
- download the latest version of the public image;
- run a mysql container setting up a root password;
- take 15 sec break to allow mysql to open connections;
- run the script.sql to initialiate a new database, build and fill the 2 tables;
- run the test.sql to query and join some record;
```

* Jenkins works as solution but means that you need to take care of different aspects:

- mantaining a cicd environment

- keep updating opensource plugins with security risks

- the cost of VM or the env where is hosted