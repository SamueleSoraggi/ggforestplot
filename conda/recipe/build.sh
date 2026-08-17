#!/bin/bash
set -euo pipefail

export DISABLE_AUTOBREW=1
"${PREFIX}/bin/R" CMD INSTALL --build .
