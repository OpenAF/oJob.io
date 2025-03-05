#!/bin/bash
# Author: Nuno Aguiar

# Check if openaf.jar exists in the current folder
if [ ! -f openaf.jar ]; then
  echo "openaf.jar not found. Please run this script on the folder where openaf.jar is located."
  exit 1
fi

# Check the current OpenAF distribution
DIST=$(./oaf -c 'af.p(getDistribution().trim())')
VERSION=$(./oaf -c 'af.p(getVersion().trim())')
JAVAVERSION=$(./oaf -c 'af.p(ow.loadFormat().getJavaVersion().trim())')
ARCH=$(uname -m | sed -E 's/aarch64/A64/;s/x86_64/64/')

# Determine if the OS is Alpine
ISALPINE=$(grep -i alpine /etc/os-release | wc -l)
if [ "$ISALPINE" -gt 0 ]; then
  ALPINE_SUFFIX="a"
else
  ALPINE_SUFFIX=""
fi

# Check current version vs https://openaf.io/$DIST/release
if [ "$VERSION" == "$(curl -s https://openaf.io/$DIST/release)" ]; then
  echo "You are using the latest version of OpenAF ($VERSION)."
else
  # Download openaf jar 
  curl https://openaf.io/$DIST/openaf.jar.repacked -o openaf.jar
  curl https://openaf.io/$DIST/openaf.jar -o openaf.jar.orig
fi

# Check if the current Java version is the latest comparing with openaf.io/java/java21_...tgz.version
if [ "$JAVAVERSION" == "$(curl -s https://openaf.io/java/java21_${ARCH}${ALPINE_SUFFIX}.tgz.version)" ]; then
  echo "You are using the latest version of Java ($JAVAVERSION)."
  jre/bin/java -jar openaf.jar --install
else
  # Download Java 21
  curl -O "https://openaf.io/java/java21_${ARCH}${ALPINE_SUFFIX}.tgz"
  tar xzf java21*
  mv jre jre.old
  mv jdk* jre
  rm -f java21*
  jre/bin/java -jar openaf.jar --install && rm -rf jre.old
fi