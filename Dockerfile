FROM golang:1.10

LABEL description="golang 1.10 + redis-cache code"

# install neovim
RUN apt-get update
RUN apt-get install vim -y


# install vim-go /etc
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go

COPY init.vim /root/.vimrc

RUN vim --cmd :GoInstallBinaries

# install dep:
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh



