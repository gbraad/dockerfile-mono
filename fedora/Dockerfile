FROM registry.gitlab.com/gbraad/fedora:24
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN dnf install -y curl unzip "dnf-command(config-manager)"; \
    rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"; \
    dnf config-manager --add-repo http://download.mono-project.com/repo/centos/; \
    dnf install -y mono-complete openssl-devel libunwind --refresh; \

    dnf install -y libuv libuv-devel libicu; \

    curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh; \
    
    bash -c "source ~/.dnx/dnvm/dnvm.sh && \
             dnvm install latest -r mono && \
             dnvm install latest -r coreclr"; \

    curl -L https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell-6.0.0_alpha.9-1.el7.centos.x86_64.rpm -o /tmp/posh.rpm ;\
    rpm -ivh /tmp/posh.rpm ;\
    rm -f /tmp/posh.rpm ;\
    
    mkdir -p /workspace

VOLUME ["/workspace"]
WORKDIR /workspace
CMD ["powershell"]
