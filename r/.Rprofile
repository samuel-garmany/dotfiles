# Posit Package Manager serves prebuilt Linux binaries for Ubuntu, so
# install.packages() doesn't compile from source.
local({
    release <- readLines("/etc/os-release")
    codename <- sub("^VERSION_CODENAME=", "", grep("^VERSION_CODENAME=", release, value = TRUE))
    if (length(codename) == 1 && "ID=ubuntu" %in% release) {
        options(repos = c(CRAN = sprintf("https://packagemanager.posit.co/cran/__linux__/%s/latest", codename)))
        # Package Manager only serves binaries when it can see the R version and platform
        options(HTTPUserAgent = sprintf("R/%s R (%s)", getRversion(),
            paste(getRversion(), R.version["platform"], R.version["arch"], R.version["os"])))
    }
})
