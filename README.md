# testproject
                                                              SAMPLE DevOps Project

Objective:

	To create a Continues Pipeline job in Jenkins to build Multi-docker image for every commit which includes Development and Production as Stages in that.

Requirements:

•	  Git – (https://github.com/prem2806/testproject.git)
•	  Jenkins (With Docker plugins)

Steps:

  Step-1: Create a public repo in GitHub containing following files (details attached)
  Step-2: Install Jenkins in local PC
  Step-3: Create a pipeline project and link Git repo it
  Step-4: Under Build Trigger set POLL SCM to * * * * *
  Step-5: Click Build Now and monitor 1st pipeline job and make sure no error observed by observing Console Output and Pipeline view
  Step-6: Then change something and commit to Git repo. Then verify Jenkins trigger next job automatically with latest committed change


--END--
