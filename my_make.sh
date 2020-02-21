#!/bin/bash
# dotnet msbuild  Build.proj /nologo /bl:build-Build-Release.binlog /m /p:Configuration=Release /p:Platform=Any CPU /t:Build /verbosity:minimal

target="Build"
configuration="Debug"
tgtFramework="netcoreapp3.0"

dotnet msbuild Build.proj /m /t:$target /p:Configuration=$configuration \
   /verbosity:minimal /nologo /p:Platform="Any CPU" \
   /p:TargetFrameworkVersion=$tgtFramework \
   /bl:build-$target-$configuration.binlog

#dotnet msbuild Build.proj   -c $configuration \
#   -f $tgtFramework \
#   -bl:build-$target-$configuration.binlog

