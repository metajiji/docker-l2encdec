FROM multiarch/alpine:x86-v3.8

ENV WINEDEBUG=-all
ENV L2_DDF_PATH=/srv/l2/asm_disasm/DAT_defs

RUN apk --no-cache add wine ncurses freetype git
RUN addgroup l2 && adduser -D -G l2 l2

COPY rootfs /
RUN chmod +x /usr/local/bin/l2wrap \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2encdec \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2encdec.exe \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/loaderCT1++ \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/loaderCT1++.exe \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/loader \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/loader.exe \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/patcher \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/patcher.exe \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2asm \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2asm.exe \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2disasm \
    && ln -rs /usr/local/bin/l2wrap /usr/local/bin/l2disasm.exe

USER l2
