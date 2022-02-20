# List of plugins

set -g @plugin "arcticicestudio/nord-tmux"  #Nord theme
set -g @plugin 'ChanderG/tmux-notify'       #Tmux Notify +M
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'



# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
