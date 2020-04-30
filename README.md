This repo contains Ansible roles
to install the daoistic web site
on the [stack-deploy](https://github.com/tessercat/stack-deploy) stack.


# Unihan data

See unihan info at
https://www.unicode.org/reports/tr38/.

Place unihan source files in `/opt/daoistic/unihan`.

    mkdir -p /opt/daoistic/unihan
    chown root:root /opt/daoistic/unihan
    chmod 0700 /opt/daoistic/unihan
    cd /opt/daoistic/unihan
    wget https://www.unicode.org/Public/UCD/latest/ucd/CJKRadicals.txt
    apt -y install unzip
    wget https://www.unicode.org/Public/UCD/latest/ucd/Unihan.zip
    unzip Unihan.zip

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
