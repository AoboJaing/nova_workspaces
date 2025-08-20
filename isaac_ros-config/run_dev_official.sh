#!/usr/bin/env bash
# 当前目录作为工作区根目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ISAAC_WS_PATH="${SCRIPT_DIR}/../isaac_ros-dev/"

# 临时环境变量写在命令前面，只作用于 run_dev.sh 这一条命令
ISAAC_ROS_WS="$ISAAC_WS_PATH" CONFIG_CONTAINER_NAME_SUFFIX=official \
    "${ISAAC_WS_PATH}/src/isaac_ros_common/scripts/run_dev.sh" -d "$ISAAC_WS_PATH" "$@"
