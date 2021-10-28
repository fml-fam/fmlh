cppflags_string = function()
{
  install_path = "include"

  if (nchar(.Platform$r_arch) > 0)
    path = file.path(install_path, .Platform$r_arch)
  else
    path = install_path

  fmlh_include_dir_rel = system.file(path, package="fmlh")
  fmlh_include_dir = tools::file_path_as_absolute(fmlh_include_dir_rel)

  flags = paste0("-I", fmlh_include_dir)
  flags
}

cppflags = function()
{
  flags = cppflags_string()

  cat(flags)
  invisible()
}
