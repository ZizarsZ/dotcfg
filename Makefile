
WHERESAVETMUX=${HOME}/.config/tmux/tmux.cfg
WHERESAVEVIM=${HOME}/.vimrc

in:
	@cp vimrc ${WHERESAVEVIM}
	@cp tmux.cfg ${WHERESAVETMUX}

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

