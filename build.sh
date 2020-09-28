pip uninstall {PATH TO STORE wheel file}/tensorflow_pkg/tensorflow-1.14.1-cp37-cp37m-linux_x86_64.whl
bazel build --local_ram_resources=2048 --config=opt --config=verbs //tensorflow/tools/pip_package:build_pip_package
./bazel-bin/tensorflow/tools/pip_package/build_pip_package {PATH TO STORE wheel file}/tensorflow_pkg
pip install {PATH TO STORE wheel file}/tensorflow_pkg/tensorflow-1.14.1-cp37-cp37m-linux_x86_64.whl