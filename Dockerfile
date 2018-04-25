FROM gitlab/gitlab-runner:ubuntu-v10.7.0

RUN apt-get update && apt-get install -y apt-transport-https \
&& curl -s https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
&& curl -s https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/microsoft.list \
&& curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
&& echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list \
&& apt-get update \
&& apt-get install -y powershell curl jq kubectl docker.io \
&& apt-get install -y python-setuptools python-dev build-essential \
&& easy_install pip \
&& pip install awscli \
&& apt-get install -y ansible \
&& usermod -aG docker gitlab-runner \
&& apt-get clean