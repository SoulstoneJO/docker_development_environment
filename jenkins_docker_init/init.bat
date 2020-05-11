@echo off
cd %~dp0
set ABSOLUTE_PATH_PRIFIX=%~dp0
set JENKINS_NAME="jenkins"

echo %ABSOLUTE_PATH_PRIFIX%jenkins_data

docker run -d^
        -p 8080:8080^
        -p 50000:50000^
        -v %ABSOLUTE_PATH_PRIFIX%jenkins_data:/var/jenkins_home^
        --name=%JENKINS_NAME%^
        jenkinsci/blueocean

docker ps

docker logs -f %JENKINS_NAME%
