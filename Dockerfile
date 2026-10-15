FROM alpine:latest
LABEL org.opencontainers.image.authors="SpaceinvaderOne" \
      org.opencontainers.image.source="https://github.com/RasmusLauritsen/unraid_vm_icons" \
      org.opencontainers.image.description="Unraid VM icons with Omarchy, Talos Linux, and agent icons"
RUN apk add --no-cache git bash beep rsync
COPY . /iconsync
VOLUME /unraid_vm_icons
VOLUME /config
CMD ["bash", "/iconsync/icon_download.sh"]
