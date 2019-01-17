FROM multiarch/alpine:x86-v3.8

ENV WINEDEBUG=-all
ENV L2_DDF_PATH=/srv/l2/asm_disasm/DAT_defs

RUN apk --no-cache add wine ncurses freetype git
RUN addgroup l2 && adduser -D -G l2 l2

COPY rootfs /
RUN chmod +x /usr/local/bin/l2wrap \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2encdec \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2encdec.exe \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/loaderCT1++ \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/loaderCT1++.exe \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/loader \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/loader.exe \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/patcher \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/patcher.exe \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2asm \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2asm.exe \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2disasm \
    && ln -s /usr/local/bin/l2wrap /usr/local/bin/l2disasm.exe

USER l2
