if type -q exa
  alias ll "exa -l -g --icons"
  alias la "ll -a"
  alias tree "ll --tree --level=2"
end

function glog --description 'Show git log'
  git log --graph --pretty=format:'%C(auto)%h%d %C(yellow)-%C(auto) %s %C(yellow)(%Cgreen%cr%C(yellow), %Cblue%an%C(yellow))%C(auto)'
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    eval /home/shi/miniconda3/bin/conda "shell.fish" hook $argv | source
    # <<< conda initialize <<<

    conda activate py38

    nvm install lts

end

set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme base16-dark
set -g theme_title_display_process yes
set -g theme_display_git_default_branch yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support no # setting this to yes breaks git features
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_node always
set -g theme_display_user yes
set -g theme_display_hostname yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_avoid_ambiguous_glyphs yes

set -g EDITOR nvim
