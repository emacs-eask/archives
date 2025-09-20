[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Emacs Version](./badges/emacs.svg)](https://www.gnu.org/software/emacs/download.html)
[![](./badges/system.svg)](#)

<a href="#"><img align="right" src="https://raw.githubusercontent.com/emacs-eask/cli/master/docs/static/logo.png" width="20%"></a>
# archives
> Handle refreshing package archives failure

[![Refresh](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml/badge.svg)](https://github.com/emacs-eask/archives/actions/workflows/refresh.yml)

Workflow automatically downloads package archives and stores them here.

💡 **NOTE:** It will refresh every `1` hour(s).

## ❓ Why do we need this?

When sandboxing during Emacs package development, we might need to call
`package-refresh-contents` multiple times due to the newly set up
environment. While Eask already minimizes unnecessary refreshes, you
may still encounter `404` errors from the archive servers (`elpa`,
`melpa`, etc.). This typically happens when the server temporarily
blocks your IP after too many requests within a short period. In such
cases, you’ll need to wait a few minutes (depending on the server) for
your IP to be unblocked.

This is where the `archives` comes in! Eask helps you avoid this situation
by downloading the `archive-contents` files when a `404` is encountered.
In other words, your package refreshes will never fail. 🎉

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE) for details.
