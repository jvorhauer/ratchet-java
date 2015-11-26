# ratchet-java

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[OracleJDK 8](http://www.oracle.com/technetwork/java/javase/overview/index.html). JDK bundle contains lots of unnecessary for Docker image stuff, so it was cleaned up. 

Original dockerfile by [Vlad Frolov](https://github.com/frol/docker-alpine-oraclejdk8).

## Build

To create the image `ratchet/ratchet-java` execute the following command:

	
	docker build -t ratchet/ratchet-java .
	
