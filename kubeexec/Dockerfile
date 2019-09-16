ARG BASE_IMAGE=0cloud0/playground
ARG VERSION=pyxtermjs
FROM ${BASE_IMAGE}:${VERSION}
LABEL org.label-schema.schema-version="1.0.0-demo" \
    maintainer="anish2good@yahoo.co.in" \
    org.label-schema.vcs-description="docker build -t 0cloud0/playground:kubeexec ." \
    org.label-schema.docker.cmd="docker run 0cloud0/playground:kubeexec " \
    image-size="71.6MB" \
    ram-usage="13.2MB to 70MB" \
    cpu-usage="Low"

ENV NAMESPACE=lockdown-secrets \
    MASTER=https://10.64.83.49:6443 \
    OAUTH=eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJsb2NrZG93bi1zZWNyZXRzIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6InNhLWxvY2tkb3duLXRva2VuLTI5NTI1Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6InNhLWxvY2tkb3duIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiYTA4MzQyNDgtZTllNi00ZTEyLWFhNmYtYjI2MTExYjExZTBmIiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50OmxvY2tkb3duLXNlY3JldHM6c2EtbG9ja2Rvd24ifQ.LmVyx95fqojFfqbEfR9s5BWIsaZwdqhrUXiSREoFM8gEQg9qlMI4cWZxZtyOJHBsloYVMm0CmXd4rACb065HszkbWoJYYFIHxoUNuUrXPKsem4dvGpirekSVR50k2g9tDEetyCmQ-wMYkLzCQjQvWMmnVJ0FewRwcQBqgNMK-iT64MAtirupLEpr2-Ch1T4tQ7dVmz7MZGz17aiZ5jCP9ahnd_LFy79F0ZE1a1K5khGEli0SdcMFmoLYyOgcxlfvMMglcdO_hWlNRvf5wjFzOaM_P3cviwKO-9SYa90wzMHRWcZUUpq7yFrNnQaBu4N2tn1qWzW_FscMM6NB7Pod9w \
    POD_NAME=busybox

RUN apk add --update curl openjdk8 && \
    rm -rf /tmp/* /var/cache/apk/*
COPY index.html ./usr/lib/python3.7/site-packages/pyxtermjs/
WORKDIR /app
COPY kubeexec.jar /app
COPY shell.sh /app
CMD ["./shell.sh"]