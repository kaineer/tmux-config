Tmux configuration
------------------

### How to reuse it on another desktop

First, clone repo:

```
$ git clone git@github.com:kaineer/tmux-config.git ~/git/config/tmux
```

Put into `.tmux.conf` importing code:

```
TMUX_CFG=/home/username/git/config/tmux
source $TMUX_CFG/config.conf
```

or just run make at repository root.

Run tmux!
