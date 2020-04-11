<p align="center">
    <a href="https://opensource.org/licenses/BSD-3-Clause"><img src="https://img.shields.io/badge/license-bsd-orange.svg" alt="Licenses"></a>
</p>

# Montgomery_Reduction
A simple implementation of Montgomery reduction algorithm in GAWK(the GNU implementation of the AWK programming language).

# Usage
```bash
/usr/bin/gawk -M -f Montgomery_Reduction.awk -v a=$a -v b=$b
```

# Recommended gawk version
* The version of gawk is 4 or later, and the MPFR library has been installed.
* If the version of gawk is 5, the MPFR library may not be installed.
```bash
$ /usr/bin/gawk -V
GNU Awk 4.1.4, API: 1.1 (GNU MPFR 4.0.1, GNU MP 6.1.2)
$/usr/local/bin/gawk -V
GNU Awk 5.0.1, API: 2.0
$
```

# Reference
https://qiita.com/NaokiOsako/items/2404a7217347363c482d  
RSA 暗号の高速化: モンゴメリリダクション - Qiita  

# Licenses
This program is under the terms of the BSD 3-Clause License.  
See https://opensource.org/licenses/BSD-3-Clause.  

