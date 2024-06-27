# amber.vim
a vim syntax file for amber

## installation
the `amber.vim` file can be installed locally in your `.vim/syntax` directory.

```
mkdir ~/.vim/syntax
wget https://raw.githubusercontent.com/gbhorwood/amber.vim/main/amber.vim -o ~/.vim/syntax/amber.vim
```

## usage
in vim, set the syntax to 'amber"

```
:set syntax=amber
```

## syntax auto-detection
amber syntax can be detected by modifying `filetype.vim` and adding

```
au BufNewFile,BufRead *.ab  setf amber
```

## contributing
this is a work in progress. i have minimal experience in writing vim syntax files, so your mileage will vary. contributions eagerly accepted.
