FROM gliderlabs/alpine

ADD dotfiles/vimrc /root/.vimrc
ADD dotfiles/vim /root/.vim
ADD screen-256color.ti /root/screen-256color.ti

RUN apk --update add vim bash ncurses
RUN tic /root/screen-256color.ti
RUN rm /root/screen-256color.ti
RUN mkdir /root/.vim-tmp

CMD ["bash"]
