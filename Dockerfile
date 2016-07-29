FROM registry.gitlab.com/gbraad/fedora:24
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN sudo dnf install -y curl; \
    sudo rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"; \
    sudo dnf config-manager --add-repo http://download.mono-project.com/repo/centos/; \
    sudo dnf install -y mono-complete openssl-devel libunwind --refresh; \

    sudo dnf install libuv libuv-devel; \

    curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh; \

    dnvm install latest -r mono; \
    dnvm install latest -r coreclr
