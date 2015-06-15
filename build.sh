#!/bin/sh

set -e
rm -rf deps/*
rm -rf apps/*/logs
rm -rf apps/*/.eunit
rm -rf apps/*/doc
./rebar clean delete-deps
./rebar get-deps compile
./rebar eunit skip_deps=true
./rebar ct skip_deps=true
cd rel && ../rebar generate && cd ..
