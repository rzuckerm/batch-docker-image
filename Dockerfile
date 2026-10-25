FROM scottyhardy/docker-wine:stable-11.0-20261025

COPY BATCH_* /tmp/
ENV WINEDEBUG=fixme-all,err-all,warn-all
ENV WINEPREFIX=/home/wineuser

# Workaround for numerous cmd bugs in wine and create the wine configuration
RUN winetricks cmd && \
    wine cmd echo Hello

ENV XDG_RUNTIME_DIR=/run/user/1010
