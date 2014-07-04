# Installs a section of Classic Fortress
!macro InstallSection PACKAGE DESCRIPTION
  Push ${PACKAGE}
  Push "${DESCRIPTION}"
  Call .installSection
!macroend

# Determines the size of a Classic Fortress section
!macro DetermineSectionSize PACKAGE
  ReadINIStr $0 $CFORT_INI "distfile_sizes" ${PACKAGE}
  StrCpy $SIZE $0
!macroend

# Converts unix line endings to dos
!macro unix2dos FILE
  Push ${FILE}
  Push ${FILE}.tmp
  Call .unix2dos
  Delete ${FILE}
  Rename ${FILE}.tmp ${FILE}
!macroend
