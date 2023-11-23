.onAttach <- function(libname, pkgname) {
  install_vapoRwave_fonts()
}

install_vapoRwave_fonts <- function() {
  # Get the user's home directory
  user_home <- Sys.getenv("HOME")

  # Determine the user's font directory based on the operating system
  font_dir <- switch(Sys.info()["sysname"],
    Windows = file.path(Sys.getenv("USERPROFILE"), "MyFonts"),
    Linux = file.path(user_home, ".fonts"),
    Darwin = file.path(user_home, "Library", "Fonts"),
    stop("Unsupported operating system")
  )

  # Copy .ttf files from the package to the user's font directory
  package_font_dir <- system.file("fonts", package = "vapoRwave", mustWork = TRUE)
  font_files <- list.files(package_font_dir, pattern = "\\.ttf$", full.names = TRUE)

  if (length(font_files) > 0) {
    # Create the destination directory if it doesn't exist
    if (!dir.exists(font_dir)) {
      dir.create(font_dir, recursive = TRUE)
    }

    # Copy files to the destination directory
    file.copy(from = font_files, to = font_dir, recursive = TRUE, overwrite = TRUE)

    # Import fonts into R
    extrafont::font_import(paths = font_dir, prompt = FALSE)

    # Check if fonts are imported successfully
    imported_fonts <- extrafont::fonts()
    if (length(imported_fonts) > 0) {
      message("Fonts imported successfully.")
    } else {
      message("No fonts imported. Please check if the fonts are in the correct format.")
    }
  } else {
    message("No fonts found in the vapoRwave package.")
  }
}
