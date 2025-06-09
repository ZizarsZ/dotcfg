
WHERESAVETMUX=${HOME}/.config/tmux/tmux.cfg
WHERESAVEVIM=${HOME}/.vimrc

vim:
	@cp vimrc ${WHERESAVEVIM}

tmux:
	@cp tmux.cfg ${WHERESAVETMUX}

in: tmux vim

back:
	@mkdir -p $(dirname ${WHERESAVETMUX})
ifneq ($(wildcard ${WHERESAVETMUX}))
	@mv ${WHERESAVETMUX} ${WHERESAVETMUX}.back
endif
ifneq ($(wildcard ${WHERESAVEVIM}))
	@mv ${WHERESAVEVIM} ${WHERESAVEVIM}.back
endif

install: back in

clean:
	@rm -f ${WHERESAVEVIM}
	@rm -f ${WHERESAVETMUX}

