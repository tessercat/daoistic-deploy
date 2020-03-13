This repo contains Ansible roles
to install the daoistic web site
on the [stack-deploy](https://github.com/tessercat/stack-deploy) stack.


# Deployment

Create the Python venv
and run the stack playbook
before running the puptel playbook.

Copy the repo's `daoistic-vars.yml` to /opt/ansible/.

Run the following command
on the host to have Ansible pull the repo
and run `local.yml` to deploy daoistic on the stack.

    /opt/ansible/venv/bin/ansible-pull \
    -U /home/peter/repos/daoistic-deploy -i hosts \
    -e @/opt/ansible/stack-vars.yml \
    -e @/opt/ansible/daoistic-vars.yml


# Unihan data

The unihan import command
extracts data from the files in
`var/unihan`.
As of version 13,
the required files are as follows.

    CJKRadicals.txt
    Unihan_DictionaryIndices.txt
    Unihan_DictionaryLikeData.txt
    Unihan_IRGSources.txt
    Unihan_NumericValues.txt
    Unihan_OtherMappings.txt
    Unihan_RadicalStrokeCounts.txt
    Unihan_Readings.txt
    Unihan_Variants.txt

Place these files in `/opt/ansible/unihan`
so Ansible can copy them to the correct location.

See unihan info at
https://www.unicode.org/reports/tr38/.

Downloads are at
https://www.unicode.org/Public/UCD/latest/.

Radicals file is at
https://www.unicode.org/Public/UCD/latest/ucd/CJKRadicals.txt.

The other files are in
https://www.unicode.org/Public/UCD/latest/ucd/Unihan.zip.
