FROM tweekmonster/vim-testbed:debian

RUN install_vim --vim=master --name=vim-plain --build \
                --vim=master --name=vim-py --py=2.7.11 --build \
                --vim=master --name=vim-py3 --py=3.4.4 --build \
                --vim=master --name=vim-ruby1 --ruby=1.8.7 --build \
                --vim=master --name=vim-ruby2 --ruby=2.0.0 --build

RUN apt-get -y install git perl

ENTRYPOINT ["/testplugin/test/run"]
