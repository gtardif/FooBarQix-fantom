using build
class Build : build::BuildPod
{
  new make()
  {
    podName = "FooBarQix"
    summary = ""
    srcDirs = [`test/`, `src/`]
    depends = ["sys 1.0"]
  }
}
