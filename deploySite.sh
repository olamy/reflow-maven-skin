#!/bin/sh

mvn clean site site:stage $@
mvn scm-publish:publish-scm -DskipTests $@
