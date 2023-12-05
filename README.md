This repo contains Ansible roles
to install the daoistic web site
on the [stack-deploy](https://github.com/tessercat/stack-deploy) stack.


# Unihan data

To generate a Unihan-only database release,
clone the
[daoistic-web](http://github.com/tessercat/daoistic-web)
repo,
copy the settings template to `var` and add fake settings,
download
[radicals data](https://www.unicode.org/Public/UCD/latest/ucd/CJKRadicals.txt)
and unzip
[Unihan data](https://www.unicode.org/Public/UCD/latest/ucd/Unihan.zip)
to `var/unihan`
and run the `migrate` and `importunihan` commands.

See unihan info at
https://www.unicode.org/reports/tr38/.
