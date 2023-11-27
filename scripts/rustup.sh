#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

rustup default stable
rustup component add rls rust-analysis rust-src