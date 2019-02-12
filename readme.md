- [haskell anywhere](#haskell-anywhere)
  - [base image](#base-image)
    - [ghci](#ghci)
      - [examples](#examples)

# haskell anywhere

This project is aimed at people who don't want to waste time installing the haskell development environment locally but to delegate everything to docker.

## base image

I am going to use the [haskell](https://hub.docker.com/_/haskell) image, version 8.6.3 in this repository.

### ghci

To simply play with GHCI, run the following:

* ```ghci.bat``` - windows (I used ```.bat``` and not ```.sh``` extension to avoid problems with the ```-it``` flag of ```docker run```). Powershell recommended.
* ```ghci.sh``` - *nix.

#### examples

GHCI container with a shared volume:

```C:\Users\piotr_justyna\Documents\github\haskell-anywhere\ghci.bat C:\Users\piotr_justyna\Documents\github\programming-in-haskell```

GHCI container with no shared volume:

```C:\Users\piotr_justyna\Documents\github\haskell-anywhere\ghci.bat```