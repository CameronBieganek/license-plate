# licenseplate

The **licenseplate** package is a simple R package to solve the license plate game. The license plate game is a road trip game where riders attempt to come up with words that contain the three letters observed on a license plate, in the sequence observed on the plate. However, additional letters are allowed in-between the given letters (including before the first letter).

The **licenseplate** package is used as follows:

```r
> library(licenseplate)

> find_words(a, b, f)
# abaft
# carboniferous
# gabfest
# syllabify
# tablespoonful

> find_words(z, z, z)
# No matches.

> # You can provide as many letters to find_words() as you like:
> find_words(a, b, c, d)
# abecedarian
# abracadabra
# abscound
# ambuscade
```
