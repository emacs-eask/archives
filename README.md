<a href="#"><img align="right" src="https://raw.githubusercontent.com/emacs-eask/eask/master/docs/static/logo.png" width="20%"></a>

[![Emacs Version](./badges/emacs.svg)](https://www.gnu.org/software/emacs/download.html)
[![Linux](./badges/system.svg)](#)

# archives
> Magic to prevent refreshing package archives failure

[![Refresh](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml/badge.svg)](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml)

Workflow automatically downloads package archives and stores them here.

**NOTE:** It will refresh every `1` hour.

## ❓ Why do we need this?

While sandboxing in Emacs package development, we are most likely going to call
`package-refresh-contents` multiple times due to the newly set up enviornment.
Eask already prevent you from doing that unless it's needed, but we might still
encounter `404` from the archive's server (`elpa`, `melpa`, etc). This is gnerally
because the server has temporarily blocked your IP to prevent a user from
continuously request the archive content file within a short amount of time.
Then you would have to wait for few minutes (time is depending on the archive
server) in order to have your IP unlock from the archive server.
