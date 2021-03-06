# BuildBootstrapTarballsFromGit
Regenerate .tar archives used for bootstrapping from their Git repositories

# Problem statement

There is a clash between digital preservation and bootstrapping efforts. While the former
(e.g. [Software Heritage](https://www.softwareheritage.org/), [Arctic Code Vault](https://archiveprogram.github.com/arctic-vault/))
focus on preserving Git repositories, the latter tries to reproduce executable binaries
from source tarballs of (sometimes older versions of) the software to bootstrap.

Especially in the early bootstrapping phase, this distinction is important, as
source tarballs often contain extra files, generated by tools that somebody installing
the software may not (yet) have - or in the context of bootstrapping, which may not
have been bootstrapped so far.

In addition, especially for older software, tagging releases in source was sometimes
not done at release time, but some time later, where mistakes can happen. Or it may even
be that there is no exact revision that corresponds to the tarball exactly, because
the tarball has been created "between two" revision.

Last but not least, older projects tend to expand CVS IDs or SVN IDs in source files,
which Git does not do.

# Solution

This repository tries to solve this problem, by providing a [list](./sourcelist.sh) of
tarballs commonly used by bootstrapping (mainly following the route that
[GNU Guix](https://guix.gnu.org/manual/en/html_node/Bootstrapping.html) takes),
mapped to tags/or commits of their Git repository (or a clone in case the project's own
repository is either not a Git repository or does not allow shallow cloning).

In case where there is no exact match (or there are generated files), a change script
and a directory of missing files is also included in this repository, making it possible
to recreate the tarball content exactly.

There are also check scripts that can be used to check that the results actually match
the tarballs, and that Software Heritage has archived all involved Git repositories.
