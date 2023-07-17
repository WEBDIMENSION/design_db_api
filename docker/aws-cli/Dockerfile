FROM debian:latest

# May be optional if these packages are installed already in the base image
RUN apt update && apt install -y curl unzip groff

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
	./aws/install

RUN apt-get install -y less
#ENTRYPOINT ["aws"]
