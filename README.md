# l2encdec and l2asm, l2disasm

## Available commands

L2 encoder/decoder version 2.10.1 by M.Soltys (aka DStuff).

| Programm             | Alias                    |
| -------------------- |:------------------------:|
| `l2encdec`           | `l2encdec.exe`           |
| `loader`             | `loader.exe`             |
| `loaderCT1++`        | `loaderCT1++.exe`        |
| `patcher`            | `patcher.exe`            |

L2 asm 1.4.0 by M.Soltys (aka DStuff).

| Programm             | Alias                    |
| -------------------- |:------------------------:|
| `l2asm`              | `l2asm.exe`              |
| `l2disasm`           | `l2disasm.exe`           |

## Examples

Decrypt

```bash
docker run --rm -it -v "$(pwd)":/data/system metajiji/l2encdec l2encdec -d 
```
