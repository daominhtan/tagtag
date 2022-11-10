# tagtag
Bash script help you create and push tag easily

## Installation


1. Clone code

```sh
$ git clone https://github.com/daominhtan/tagtag.git
```

2. Add folder to your PATH

```sh
$ cd tagtag
$ pwd

Thêm đường dẫn vào PATH
```

## USE

```sh
$ tagtag -h

```

```sh
Usage: /Users/tandm/tmp/tagtag/tagtag.sh -v <version> -e <env> -p <do push now>
	-v Description of what is version: v3.0.0 - (default: v3.0.0)
	-e Description of what is env: sb, prod - (default: sb)
	-p Description of what is push now: true, false - (default: false)
```
ex:

```sh
tagtag.sh 
Ver: v3.0.0
Env: sb
Push: no
v3.0.0-20221110172423-sb
Created tag: v3.0.0-20221110172423-sb
Pres y to PUSH NOW: [ git push origin v3.0.0-20221110172423-sb ], Press 'any Key' to exit

Doing push...
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/daominhtan/tagtag.git
 * [new tag]         v3.0.0-20221110172423-sb -> v3.0.0-20221110172423-sb
Done.
```