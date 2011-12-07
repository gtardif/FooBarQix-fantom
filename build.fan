using build
class Build : build::BuildPod
{
  new make()
  {
    podName = "FooBarQix"
    summary = ""
    srcDirs = [`src/`]
    depends = ["sys 1.0"]
  }
}
