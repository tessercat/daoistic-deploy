# Unihan data

The unihan import command
extracts data from the files in
`var/unihan`.
As of version 12,
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

Place a versioned archive of these files
(that extracts all files to subsirectory `unihan`)
in the inventory host's `host_data`.
The playbook will link the file
in the role's `files`
and extract them to the correct location
before it runs the import command.

See unihan info at
https://www.unicode.org/reports/tr38/.

Downloads are at
https://www.unicode.org/Public/UCD/latest/.

Radicals file is at
https://www.unicode.org/Public/UCD/latest/ucd/CJKRadicals.txt.

The other files are in
https://www.unicode.org/Public/UCD/latest/ucd/Unihan.zip.

# Book data

The playbook expects
an inventory-host-specific archive
of the daoistic-book repo
that extracts to subdirectory `book`
to exist in the role's `files`.
