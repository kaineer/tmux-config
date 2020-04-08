Tmux configuration
------------------

### How to reuse it on another desktop

1. Clone repo into `~/git/config` directory
2. Put into `.tmux.conf` importing code:

```
TMUX_CFG=/home/username/git/config/config
source $TMUX_CFG/config.conf
```
(modify TMUX\_CFG value as you need)

3. Run tmux!
