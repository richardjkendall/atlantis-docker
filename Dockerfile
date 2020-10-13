FROM runatlantis/atlantis

ADD https://github.com/gruntwork-io/terragrunt/releases/download/v0.25.3/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN chmod +x /usr/local/bin/terragrunt
