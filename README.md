# django-proj

가상환경 생성 (프로젝트 루트에서 실행)  
local dev venv -> `devenv`

```
$ python3 -m venv devenv
$ source ./devenv/bin/activate
```

package 목록 저장 (가상환경/프로젝트 루트에서 실행)

```
pip freeze > requirements.txt
```

package 복원 (가상환경에서 실행)

```
pip install -r requirements.txt
```

    