#!/usr/bin/env bats

@test "clear workspace files" {
    run ./scripts/clear_workspace.sh
    [ "$status" -eq 0 ]
}

@test "create workspace" {
    run ./scripts/create_ws_dirs.sh
    [ "$status" -eq 0 ]
}

@test "init workspace" {
    run ./scripts/init_catkin_ws.sh
    [ "$status" -eq 0 ]
}

@test "clone git repo" {
  run ./scripts/clone_git_repo.sh
  [ "$status" -eq 0 ]
}

@test "build workspace" {
  run ./scripts/build_ws.sh
  [ "$status" -eq 0 ]
}
