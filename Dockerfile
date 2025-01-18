FROM scottyhardy/docker-wine:stable-9.0-20250112

COPY BATCH_* /tmp/
ENV WINEDEBUG=fixme-all,err-all,warn-all
ENV WINEPREFIX=/home/wineuser
RUN wine cmd echo
