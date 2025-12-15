# pinentry-linux-sessioncache

This is a small helper that, if used in place of pinentry,
intercepts the communication of a program with the true pinentry and caches
passwords in the linux kernel session keyring.

**Warning: This may not be entirely compatible with the Assuan protocol.**

## Prerequisites

- keyutils (keyctl(1))
- bash
- some pinentry application

## Usage

For simple usage, just add this directory to your `PATH`
environment variable and use `pinentry` as before.

## Configuration

1. Optionally, you can specify a particular instance of pinentry by running
   `pinentry-linux-sessioncache <pinentry executable>`.

2. By default, keys live forever (or until the keyring is destroyed or the keys
   are removed from all keyrings).
   The environment variable `PINENTRY_SESSIONCACHE_TIMEOUT` allows to specify
   a timeout in seconds (suitable for `keyctl timeout`).
