function fish_prompt
  set -l last_status $status
  set -l dir (prompt_pwd)

  set -l branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
  set -l cluster (command kubectl config current-context)

  set -l bwhite (set_color --bold white)
  set -l blblue (set_color --bold 02f4f4)
  set -l blue (set_color --bold blue)
  set -l bteal (set_color --bold 02f4c0)
  set -l bgreen (set_color --bold green)
  set -l hostnamecolour (set_color --bold  c5f9f9)
  set_color --bold white

  printf "\n "
  printf "$bteal $USER"
  printf "$bwhite@$hostnamecolour$(echo $hostname) "
  printf "$blblue  $dir "
  printf "$blue 🚢~$cluster "

  if test -n "$branch"
    set_color --bold green
    printf "🌿~$branch "
  end

  if not test "$last_status" -eq 0
    set_color --bold red
    printf "$last_status "
    set_color --bold white
  else
    set_color --bold green
    printf ""
    set_color --bold white
  end

  set_color --bold white
  printf "\n"

  set_color --bold green
  printf "  "
end
