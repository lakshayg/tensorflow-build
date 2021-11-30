This repository contains custom builds of tensorflow. To install
one of these on your system, download the correct file according
to your version of python and gcc and run the following command.
```
pip install --ignore-installed --upgrade /path/to/binary.whl --user
```
You can also install directly from github using
```
pip install --ignore-installed --upgrade "Download URL" --user
```

All the binaries were compiled by passing `--config=opt` to bazel and setting
`-O2 -Wno-sign-compare` in addition to the feature flags in configure script.

**Latest Builds**

| TF     | HW  | OS             | GCC                | Python   | NumPy  | Supports                        |                                                                                                                                                           |
|--------|-----|----------------|--------------------|----------|--------|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2.7.0  | CPU | Ubuntu 20.04   | 9.3.0              | 3.8.10   | 1.21.4 | FMA, AVX, AVX2, SSE4.1, SSE4.2  | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/tf2.7.0-ubuntu20.04-py3.8.10/tensorflow-2.7.0-cp38-cp38-linux_x86_64.whl)       |
| 2.2.1  | CPU | macOS Catalina | clang-1200.0.26.2  | 3.8.6    |        | FMA, AVX, AVX2, SSE4.1, SSE4.2  | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/tf2.2.1-py3.8-macos/tensorflow-2.2.1-cp38-cp38-macosx_10_15_x86_64.whl)         |
| 2.2.0  | CPU | Ubuntu 18.04   | 7.5.0              | 3.7.7    |        | FMA, AVX, AVX2, SSE4.1, SSE4.2  | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/tf2.2.0-py3.7-ubuntu18.04/tensorflow-2.2.0-cp37-cp37m-linux_x86_64.whl)         |
| 2.1.0  | CPU | Ubuntu 16.04   | 5.4.0              | 3.5.2    |        | FMA, AVX, AVX2, SSE4.1, SSE4.2  | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf-2.1.0-py35-ubuntu1604/tensorflow-2.1.0-cp35-cp35m-linux_x86_64.whl) |

**What flags are supported by my CPU?**

To check the instruction sets supported by your CPU, check the output of the following commands:

```
# macOS
sysctl -a | grep "machdep.cpu.*features:"

# Linux
cat /proc/cpuinfo | grep flags
```

---

If you find this project useful, _consider donating whatever amount you
value this project at to a (any) charity_, please drop me an email if you
do. I personally care a lot about improving access to high quality medical
facilities and [Rotary Ambala Cancer & General Hospital][2] is my charity
of choice. It is a donation supported hospital in my hometown and provides
extremely affordable services to the local population.

The donation process on its page is suboptimal, if you prefer not going
through the trouble, consider using the "Sponsor" button at the top or
this Venmo QR code for [@lakshayg on Venmo](https://venmo.com/lakshayg)
and I'll make sure your donations get to the hospital. Thanks!

<details>
<summary>Expand for Venmo QR Code</summary>
<img title="@lakshayg on Venmo" src="https://user-images.githubusercontent.com/7976315/86985046-0c362280-c145-11ea-9eda-cf80bfe6dbe5.JPG" width=250/>
</details>

---

<details>
<summary>Expand for older builds</summary>

| TF     | HW  | OS                | GCC                | Python   | Supports                                            |                                                                                                                                                                                         |
|--------|-----|-------------------|--------------------|----------|-----------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2.4.1  | CPU | Ubuntu 20.04      | 9.3.0              | 3.8.5    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/tf2.4.0-ubuntu20.04-python3.8.5/tensorflow-2.4.1-cp38-cp38-linux_x86_64.whl)                                  |
| 1.14.1 | CPU | macOS Mojave      | clang-1001.0.46.4  | 3.7.4    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.14.1-mojave-py3.7/tensorflow-1.14.1-cp37-cp37m-macosx_10_9_x86_64.whl)                           |
| 1.14.1 | CPU | macOS Mojave      | clang-1001.0.46.4  | 3.7.4    | FMA, AVX2, AVX512F                                  | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf-1.14-ubuntu18.04-py3.7/tensorflow-1.14.1-cp37-cp37m-macosx_10_9_x86_64.whl)                       |
| 1.14.1 | CPU | Ubuntu 18.04      | 7.4                | 3.7.3    | FMA, AVX2, AVX512F                                  | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf-1.14-ubuntu18.04-py3.7/tensorflow-1.14.1-cp37-cp37m-linux_x86_64.whl)                             |
| 1.13.1 | CPU | MacOS Mojave      | clang-1001.0.46.4  | 3.7.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.13.1-ubuntu16.04-py3/tensorflow-1.13.1-cp37-cp37m-macosx_10_9_x86_64.whl)                        |
| 1.13.1 | CPU | Ubuntu 16.04      | 5.4                | 3.5.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.13.1-ubuntu16.04-py3/tensorflow-1.13.1-cp35-cp35m-linux_x86_64.whl)                              |
| 1.12.0 | CPU | Ubuntu 16.04      | 5.4                | 3.5.4    | FMA, AVX2, AVX512F                                  | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.13.0-ubuntu16.04-py3-avx512f/tensorflow-1.12.0-cp35-cp35m-linux_x86_64.whl)                      |
| 1.12.0 | CPU | Ubuntu 18.04      | 7.3                | 3.6.5    | FMA, AVX2, AVX512F                                  | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-ubuntu18.04-py3-avx512f/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl)                      |
| 1.12.0 | CPU | Ubuntu 18.04      | 7.3                | 3.6.5    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-ubuntu18.04-py2-py3/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl)                          |
| 1.12.0 | CPU | Ubuntu 18.04      | 7.3                |2.7.15rc1 | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-ubuntu18.04-py2-py3/tensorflow-1.12.0-cp27-cp27mu-linux_x86_64.whl)                         |
| 1.12.0 | CPU | Ubuntu 16.04      | 5.4                | 3.5.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-macOS-mojave-ubuntu16.04-py2-py3/tensorflow-1.12.0-cp35-cp35m-linux_x86_64.whl)             |
| 1.12.0 | CPU | Ubuntu 16.04      | 5.4                | 2.7.12   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-macOS-mojave-ubuntu16.04-py2-py3/tensorflow-1.12.0-cp27-cp27mu-linux_x86_64.whl)            |
| 1.12.0 | CPU | MacOS Mojave      | clang-1000.10.44.4 | 3.7.0    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-macOS-mojave-ubuntu16.04-py2-py3/tensorflow-1.12.0-cp37-cp37m-macosx_10_13_x86_64.whl)      |
| 1.12.0 | CPU | MacOS Mojave      | clang-1000.10.44.4 | 2.7.15   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.12.0-macOS-mojave-ubuntu16.04-py2-py3/tensorflow-1.12.0-cp27-cp27m-macosx_10_14_x86_64.whl)      |
| 1.11.0 | CPU | Ubuntu 16.04      | 5.4                | 3.5.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.11.0-ubuntu16.04-py2.7-py3.5/tensorflow-1.11.0-cp35-cp35m-linux_x86_64.whl)                      |
| 1.11.0 | CPU | Ubuntu 16.04      | 5.4                | 2.7.12   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.11.0-ubuntu16.04-py2.7-py3.5/tensorflow-1.11.0-cp27-cp27mu-linux_x86_64.whl)                     |
| 1.11.0 | CPU | MacOS Mojave      | clang-1000.10.44.2 | 3.7.0    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.11.0-macos-mojave-py2.7-py3.7/tensorflow-1.11.0-cp37-cp37m-macosx_10_13_x86_64.whl)              |
| 1.11.0 | CPU | MacOS Mojave      | clang-1000.10.44.2 | 2.7.15   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.11.0-macos-mojave-py2.7-py3.7/tensorflow-1.11.0-cp27-cp27m-macosx_10_14_x86_64.whl)              |
| 1.10.0 | CPU | Ubuntu 16.04      | 5.4                | 3.6.6    | FMA, AVX, AVX2, SSE4.1, SSE4.2, AVX512F             | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.10.0-ubuntu16.04-py36-avx512f/tensorflow-1.10.0-cp36-cp36m-linux_x86_64.whl)                     |
| 1.10.0 | CPU | Ubuntu 16.04      | 5.4                | 2.7.12   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.10.0-ubuntu16.04-py35-py27/tensorflow-1.10.0-cp27-cp27mu-linux_x86_64.whl)                       |
| 1.10.0 | CPU | Ubuntu 16.04      | 5.4                | 3.5.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.10.0-ubuntu16.04-py35-py27/tensorflow-1.10.0-cp35-cp35m-linux_x86_64.whl)                        |
| 1.10.0 | CPU | Ubuntu 18.04      | 7.3                | 2.7.15rc1| FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.10.0-ubuntu18.04-py36-py27/tensorflow-1.10.0-cp27-cp27mu-linux_x86_64.whl)                       |
| 1.10.0 | CPU | Ubuntu 18.04      | 7.3                | 3.6.5    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.10.0-ubuntu18.04-py36-py27/tensorflow-1.10.0-cp36-cp36m-linux_x86_64.whl)                        |
| 1.9.0  | CPU | Ubuntu 18.04      | 7.3                | 3.6.5    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-ubuntu18.04-py36/tensorflow-1.9.0-cp36-cp36m-linux_x86_64.whl)                               |
| 1.9.0  | CPU | Ubuntu 16.04      | 5.4                | 2.7.12   | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-ubuntu16.04-py27-py35/tensorflow-1.9.0-cp27-cp27mu-linux_x86_64.whl)                         |
| 1.9.0  | CPU | Ubuntu 16.04      | 5.4                | 3.5.2    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-ubuntu16.04-py27-py35/tensorflow-1.9.0-cp35-cp35m-linux_x86_64.whl)                          |
| 1.9.0  | CPU | Ubuntu 16.04      | 5.4                | 3.6.6    | FMA, AVX, AVX2, SSE4.1, SSE4.2                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-ubuntu16.04-py36/tensorflow-1.9.0-cp36-cp36m-linux_x86_64.whl)                               |
| 1.9.0  | CPU | macOS High Sierra | clang-902.0.39.1   | 2.7.15   | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-macos-py27-py36/tensorflow-1.9.0-cp27-cp27m-macosx_10_13_x86_64.whl)                         |
| 1.9.0  | CPU | macOS High Sierra | clang-902.0.39.1   | 3.6.5    | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/tf1.9.0-macos-py27-py36/tensorflow-1.9.0-cp36-cp36m-macosx_10_13_x86_64.whl)                         |
| 1.8.0  | CPU | macOS High Sierra | clang-902.0.39.1   | 2.7.15   | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/v1.8.0-macos-py27-py36-avx-avx2-fma-sse41-sse42/tensorflow-1.8.0-cp27-cp27m-macosx_10_13_x86_64.whl) |
| 1.8.0  | CPU | macOS High Sierra | clang-902.0.39.1   | 3.6.5    | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/v1.8.0-macos-py27-py36-avx-avx2-fma-sse41-sse42/tensorflow-1.8.0-cp36-cp36m-macosx_10_13_x86_64.whl) |
| 1.8.0  | CPU | macOS High Sierra | clang-902.0.39.1   | 3.6.5    | SSE4.1, SSE4.2, AVX, AVX2, FMA, SSSE3, POPCNT, CX16 | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/old-tensorflow-versions/tensorflow-1.8.0-cp36-cp36m-macosx_10_7_x86_64.whl)                          |
| 1.6.0  | CPU | Ubuntu 16.04      | 5.4                | 2.7.12   | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/v1.6.0-ubuntu_16_04-py27-avx-avx2-fma-sse41-sse42/tensorflow-1.6.0-cp27-cp27mu-linux_x86_64.whl)     |
| 1.5.0  | CPU | macOS High Sierra | clang-900.0.39.2   | 3.6.4    | AVX, SSE4.1, SSE4.2                                 | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/old-tensorflow-versions/tensorflow-1.5.0-cp36-cp36m-macosx_10_13_x86_64.whl)                         |
| 1.5.0  | CPU | macOS High Sierra | clang-900.0.39.2   | 3.6.4    | SSE4.2, AVX, AVX2, FMA                              | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/old-tensorflow-binary/tensorflow-1.5.0-cp36-cp36m-macosx_10_13_x86_64.whl)                           |
| 1.4.1  | CPU | macOS Sierra      | clang-900.0.39.2   | 3.6.1    | AVX, SSE4.1, SSE4.2                                 | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/v1.4.1-macosx_10_12-py27-py36-avx-sse41-sse42/tensorflow-1.4.1-cp36-cp36m-macosx_10_12_x86_64.whl)   |
| 1.4.1  | CPU | macOS Sierra      | clang-900.0.39.2   | 2.7.13   | AVX, SSE4.1, SSE4.2                                 | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/v1.4.1-macosx_10_12-py27-py36-avx-sse41-sse42/tensorflow-1.4.1-cp27-cp27m-macosx_10_12_intel.whl)    |
| 1.4.1  | CPU | macOS Sierra      | clang-900.0.39.2   | 2.7.14   | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/old-tensorflow-versions/tensorflow-1.4.1-cp27-cp27m-macosx_10_12_x86_64.whl)                         |
| 1.4.0  | CPU | macOS Sierra      | clang-802.0.42     | 3.6.3    | SSE4.1, SSE4.2, AVX, AVX2, FMA                      | [Download](https://github.com/lakshayg/tensorflow-build-archived/releases/download/old-tensorflow-versions/tensorflow-1.4.0-cp36-cp36m-macosx_10_12_x86_64.whl)                         |
</details>

**Visit [tensorflow.org][1] for instructions on building tensorflow for your machine.**

[1]: https://www.tensorflow.org/install/install_sources
[2]: http://www.rotaryhospitalambala.com/about-us/the-hospital
