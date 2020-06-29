FROM centos

RUN yum install wget -y

RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum install jenkins -y

RUN yum install java-11-openjdk.x86_64 -y

RUN yum install net-tools -y

RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

CMD java -jar /usr/lib/jenkins/jenkins.war

