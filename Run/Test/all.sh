#!/bin/bash

HERE="$(pwd)"

sh "$HERE/module_Testable/test.sh" "$HERE/Core" && \
sh "$HERE/module_Testable/test.sh" "$HERE/Propriatery"