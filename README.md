# siffer
Simple Caesar Cipher utility tools

## Install
```
nimble install https://github.com/TheBoringDude/siffer.git
```

## Usage
```nim
  import siffer

  echo rot13("hello WORLD")
  echo rot5("1 23 456 7890")
  echo rot18("hello world 123")
  echo rot47("decode Rot-47")
```
### Available `procs`
- `rot13` -  ciphers Alphabet from `A` - `Z`
- `rot5` - ciphers Digits from `0` - `9`
- `rot18` - combination of `rot5` and `rot13`
- `rot47` - ciphers the **`94` printable ascii letters** from `!` - `~`


#### Inspiration: https://www.dcode.fr

### Huge thanks:
- Thanks to [@Yardanico](https://github.com/Yardanico) for mentioning a better approach or method to achieving `Rot-13`.

### &copy; TheBoringDude