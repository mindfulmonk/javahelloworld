FROM java:7
MAINTAINER Marcus Maxwell <marcus.maxwell@contino.io>
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
