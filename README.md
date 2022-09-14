<a href="#"><img align="right" src="https://raw.githubusercontent.com/emacs-eask/cli/master/docs/static/logo.png" width="20%"></a>

[![Emacs Version](./badges/emacs.svg)](https://www.gnu.org/software/emacs/download.html)
[![Linux](./badges/system.svg)](#)

# archives
> Magic to prevent refreshing package archives failure

[![Refresh](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml/badge.svg)](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml)

Workflow automatically downloads package archives and stores them here.

**NOTE:** It will refresh every `1` hour.

## ❓ Why do we need this?

While sandboxing in Emacs package development, we will most likely call
`package-refresh-contents` multiple times due to the newly set up environment.
Eask already prevents you from doing that unless it's needed, but we might still
encounter `404` from the archive's server (`elpa`, `melpa`, etc). This is generally 
because the server has temporarily blocked your IP to prevent a user from
continuously requesting the archive content file within a short amount of time.
Then you would have to wait for a few minutes (time depends on the archive server)
to have your IP unlock from the archive server.

Here is the `archives` that comes into play! Eask tries to save you from this
condition; it will download these `archive-contents` files if a `404` is met.
It simply means you will never fail on refreshing package contents. 🎉
