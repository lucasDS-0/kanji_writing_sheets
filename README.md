# Kanji Writing  Sheets

This repo consists on template sheets for (mainly, but not exclusively) 
japanese writing practice.

## Repo structure

Inside `src` there are multiple sheet formats to choose from.

```Shell
├── compile.sh
├── LICENSE
├── README.md
└── src
    ├── gradual_empty.tex
    ├── gradual.tex
    ├── horizontal_empty.tex
    ├── horizontal.tex
    ├── vertical_empty.tex
    └── vertical.tex
```

## Usage

First of all, make sure that `compile.sh` is able to run as a program.  
To make it executable, update its permission with:
```Shell
chmod +x compile.sh
```
Then run the program by using
```Shell
./compile.sh
```
This is going to crete a new diretory `build` with the compiled documents.
```Shell
...
└── build
    ├── gradual_empty.pdf
    ├── gradual.pdf
    ├── horizontal_empty.pdf
    ├── horizontal.pdf
    ├── vertical_empty.pdf
    └── vertical.pdf
```

