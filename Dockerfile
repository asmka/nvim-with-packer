FROM alpine:3.16.0
WORKDIR /root

RUN apk add bash
RUN apk add neovim
RUN apk add git
RUN apk add npm

# Place setting files
COPY --chown=root:root nvim .config/nvim

# Install Packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim .local/share/nvim/site/pack/packer/start/packer.nvim
RUN nvim --headless +'au User PackerComplete quitall' +'PackerInstall'

CMD ["/bin/sh"]
