Tmux configuration
------------------

### How to reuse it on another desktop

1. Clone repo into `~/git` directory
2. Put into `.tmux.conf` importing code:

```
TMUX_CFG=/home/username/git/tmux-config
source $TMUX_CFG/config.conf
```
(modify TMUX_CFG value as you need)

3. Run tmux!
