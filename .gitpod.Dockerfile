FROM gitpod/workspace-full:2022-10-30-18-48-35
ARG TERRAFORM_VERSION=1.3.6
USER root
# Install Terraform and VAULT
RUN apt-get update -y && \
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
mv terraform /usr/bin && \
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
# Install AWS
pip install --upgrade pip && \
pip install --upgrade awscli
USER gitpod
