#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

set -e

if [[ ! -z "${JUPYTER_ENABLE_LAB}" ]]; then
  . /usr/local/bin/start.sh $wrapper jupyter lab --NotebookApp.ip=0.0.0.0 --NotebookApp.token=${SAVVI_TOKEN} --no-browser "$@"
else
  . /usr/local/bin/start.sh $wrapper jupyter notebook --NotebookApp.ip=0.0.0.0 --NotebookApp.token=${SAVVI_TOKEN} --no-browser "$@"
fi
