FROM tweekmonster/vim-testbed:0.2

RUN install_vim -name vim-plain -tag master -build \
                -name vim-py -tag master -py -build \
                -name vim-py3 -tag master -py3 -build \
                -name vim-ruby -tag master -ruby -build
RUN apk --update add git perl

ENTRYPOINT ["/testplugin/test/run"]
