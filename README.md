# docker-man

`docker-man` is a base Docker image containing the `man` and associate commands. This image can be used 
to create images containing your preferred manpages.

## kman

`kman` is an example of such an image containing manpages for Kubernetes commands (cloud-controller-manager, kube-apiserver, kube-controller-manager, kube-proy, kube-scheduler, kubeadm, kubectl, kubelet).

The manpages sources come from the `github.com/kuberntes/kubernetes` repository (found in `docs/man/man1` after running `make`).

### Usage

First create some aliases: 
```
$ alias kman="docker run -it --rm feloy/kman:latest man"

$ alias kpropos="docker run -it --rm feloy/kman:latest apropos"
```

Then access the Kubernetes manpages:
```
$ kpropos kubectl
[...]
$ kman kubectl-cp
[...]
```
