FROM alpine:3.16.0

RUN apk add neovim
RUN apk add git

# # Create a group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
WORKDIR /home/appuser

# Place setting files
COPY --chown=appuser:appgroup nvim .config/nvim

# Install Packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim .local/share/nvim/site/pack/packer/start/packer.nvim
RUN nvim --headless +'au User PackerComplete quitall' +'PackerInstall'

CMD ["/bin/sh"]
