GEOMETRY_PRETTY_GIT_CLEAN=${GEOMETRY_PRETTY_GIT_CLEAN:-"(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧"}
GEOMETRY_PRETTY_GIT_DIRTY=${GEOMETRY_PRETTY_GIT_DIRTY:-"(ノಠ益ಠ)ノ彡┻━┻"}

geometry_prompt_pretty_git_setup() {}

geometry_prompt_pretty_git_render() {
  # Do nothing if we're not in a repository
  [ ! -d $PWD/.git  ] && return

  if test -z "$(git status --porcelain --ignore-submodules)"; then
    echo $GEOMETRY_PRETTY_GIT_CLEAN
  else
    echo $GEOMETRY_PRETTY_GIT_DIRTY
  fi
}

geometry_plugin_register pretty_git

