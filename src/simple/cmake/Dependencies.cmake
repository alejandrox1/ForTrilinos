TRIBITS_PACKAGE_DEFINE_DEPENDENCIES(
  LIB_REQUIRED_PACKAGES
    Anasazi
    Stratimikos
    Teuchos
    Thyra
    ThyraTpetraAdapters
    Tpetra
    ForTrilinosTeuchos
    ForTrilinosTpetra
  LIB_OPTIONAL_PACKAGES
    Anasazi
    Ifpack2
    MueLu
  TEST_REQUIRED_PACKAGES # Needed to pass, not to build
  TEST_OPTIONAL_PACKAGES
    Anasazi
    Belos
    Ifpack2
    MueLu
)
