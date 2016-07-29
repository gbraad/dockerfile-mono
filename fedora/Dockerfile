FROM registry.gitlab.com/gbraad/fedora:24
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN dnf install -y curl unzip "dnf-command(config-manager)"; \
    rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"; \
    dnf config-manager --add-repo http://download.mono-project.com/repo/centos/; \
    dnf install -y mono-complete openssl-devel libunwind --refresh; \

    dnf install -y libuv libuv-devel; \

    curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh; \
    
    bash -c "source ~/.dnx/dnvm/dnvm.sh && \
             dnvm install latest -r mono && \
             dnvm install latest -r coreclr"
