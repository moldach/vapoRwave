.onAttach <- function(libname, pkgname) {
  install_vapoRwave_fonts()
}

install_vapoRwave_fonts <- function() {
  # Get the operating system
  os_type <- Sys.info()["sysname"]
  
  # Determine the system font directory
  if (os_type == "Windows") {
    font_dir <- normalizePath("~/Windows/Fonts")
  } else if (os_type == "Darwin") { # macOS
    font_dir <- normalizePath("~/Library/Fonts")
  } else if (os_type == "Linux") {
    font_dir <- normalizePath("/usr/local/share/fonts")
  } else {
    stop("Unsupported operating system.")
  }
  
  # Copy .ttf files from the package to the system font directory
  package_font_dir <- system.file("./inst/fonts", package = "vapoRwave")
  font_files <- list.files(package_font_dir, pattern = "\\.ttf$", full.names = TRUE)
  
  if (length(font_files) > 0) {
    # Ask for user's permission
    message("The vapoRwave package needs to install some fonts to your system font directory in order to work correctly.")
    message("This operation requires administrative privileges.")
    if (tolower(readline("Do you want to proceed? [y/n]: ")) != "y") {
      stop("Font installation cancelled by the user.")
    }
    
    # Copy files with sudo
    for (file in font_files) {
      system(paste("sudo cp", file, font_dir))
    }
    
    # Import fonts into R
    extrafont::font_import(paths = font_dir, prompt = FALSE)
  }
}