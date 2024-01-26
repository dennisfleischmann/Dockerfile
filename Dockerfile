FROM amazonlinux:2

# Install necessary packages
RUN yum update -y && \
    yum install -y amazon-ssm-agent \
    && yum clean all

# The ENTRYPOINT should start the SSM Agent
ENTRYPOINT ["amazon-ssm-agent"]
