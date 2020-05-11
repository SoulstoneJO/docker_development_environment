basepath=$(cd `dirname $0`; pwd)

echo $basepath

docker run -d\
        -p 8080:8080\
        -p 50000:50000\
        -v $basepath/jenkins_data:/var/jenkins_home\
        --name=$JENKINS_NAME\
        jenkinsci/blueocean

docker ps

docker logs -f %JENKINS_NAME%
