#!/bin/sh
#
# Regenerates and installs all the DLLs we handle

set -e

./genjar.sh mscorlib.dll
./install.sh poms/mscorlib.pom mscorlib.jar
rm mscorlib.jar

./genjar.sh System.dll
./install.sh poms/system.pom System.jar
rm System.jar

./genjar.sh System.Core.dll
./install.sh poms/system-core.pom System.Core.jar
rm System.Core.jar

./genjar.sh System.Data.dll
./install.sh poms/system-data.pom System.Data.jar
rm System.Data.jar

./genjar.sh OpenTK-1.0.dll
./install.sh poms/opentk.pom OpenTK-1.0.jar
rm OpenTK-1.0.jar

./genjar.sh monotouch.dll
./install.sh poms/monotouch.pom monotouch.jar
rm monotouch.jar

./genjar.sh MonoTouch.Dialog-1.dll
./install.sh poms/monotouch-dialog.pom MonoTouch.Dialog-1.jar
rm MonoTouch.Dialog-1.jar
