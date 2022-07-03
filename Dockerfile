FROM alpine:3.16.0

RUN apk add bash
RUN apk add curl
RUN apk add git
RUN apk add npm
RUN apk add neovim

# # Create a group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
WORKDIR /home/appuser

# Place setting files
COPY --chown=appuser:appgroup nvim .config/nvim

# Install Packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim .local/share/nvim/site/pack/packer/start/packer.nvim
RUN nvim --headless +'au User PackerComplete quitall' +'PackerInstall'

# Place example project
COPY --chown=appuser:appgroup example example

CMD ["/bin/sh"]
