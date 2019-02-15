- [haskell anywhere](#haskell-anywhere)
  - [base image](#base-image)
    - [ghci](#ghci)
      - [examples](#examples)
    - [stack](#stack)
      - [examples](#examples-1)

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

```C:\Users\piotr_justyna\Documents\github\haskell-anywhere\ghci\ghci.bat C:\Users\piotr_justyna\Documents\github\programming-in-haskell```

GHCI container with no shared volume:

```C:\Users\piotr_justyna\Documents\github\haskell-anywhere\ghci\ghci.bat```

### stack

To compile bigger projects, use stack scripts:

* ```stack.sh``` - platform-independent

This time there is no difference between the two as there is no interactive mode required. One script will do. What happens here is we're building an image containing a fully functional installation of `stack`. Your code gets copied into the image and built during the image build process. While it works very quite neatly, it is very slow. Good for PoC's, but not for much else.

To use, simply drop:

* docker.sh
* Dockerfile

into your project directory and adapt the dockerfile as needed - the only required change is the executable name, everything else is optional.

#### examples

In your project directory:

```./docker.sh```