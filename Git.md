# Github

## 용어

- 버전 관리 : 프로젝트 상태가 변경되는 정보를 알고 있다는 것. Git은 가장 널리 쓰이는 버전관리 도구 중에 하나로 commit을 사용해 버전이 달라지는 것을 관리.

- git초기화 (git initialize) : 컴퓨터에 있는 프로젝트를 Git이 관리하는 프로젝트로 만들기

- 커밋 (commit) : 현재 프로젝트의 상태를 저장하는 것.

- 레포 (repo) : 내 컴퓨터에 저장되어 있는 Git저장소를 로컬 repo(local repository), Github처럼 다른 곳에서 접속할 수 있는 공간에 저장되어 있는 것을 원격 repo (remote repository)

- 추적 (Tracking) : 로컬 repo branch와 원격 repo branch를 연결.
(로컬 repo에서 원격 repo로 tracking)

- push : 로컬 repo branch의 commit 들을 원격 repo branch에 반영.

- pull : 원격 repo branch의 commit 들을 로컬 repo branch로 반영.

- clone : 원격 repo 를 내 컴퓨터에 가져와서 초기 repo 세팅하는 것.

- issue : 내가 할 작업, 기능 추가, 버그 리포트 등 여러 방식으로 사용.

- 브랜치 (branch) : 특정 commit에서 갈라져나와 작업할 수 있음.

- 체크아웃 (checkout) : 작업할 브랜치로 바꾸는 것. 체크아웃된 브랜치에만 commit이 반영.

- 머지, 병합(Merge) : 브랜치의 작업 내역 commit 들을 다른 branch로 반영(합치기)는 것.

- 병합 충돌 (Merge conflict) : Merge하는 과정에서 같은 파일에 동일한 부분이 수정된 게 발견될 때 발생.

- 어맨드, 고치기 (amend) : 최신의 commit을 수정하는 것. 가장 최근의 commit만 고칠 수 있다.

- 리버트 (revert) : 어떤 내용을 되돌렸는지 새로운 commit을 남기는 것. 최신 commit뿐만 아니라 이전에 했던 commit도 revert로 되돌리 수 있음.

- 리셋 (reset) : commit 했던 작업내역을 말 그대로 리셋시키는 것.  
mix reset : 작업 내용은 그대로 두고 commit만 되돌리는 것.  
hard reset : 작업 내용과 commit 모두 되돌리는 것. (작업내용이 사라지기 때문에 신중히)

- 스태시 (stash) : 프로젝트의 변경사항을 임시적으로 보관해둘 때 사용.  
다른 branch로 체크아웃 하는 경우 현재 branch의 변경사항이 사라지게 된다. 아직 작업중이라서 commit을 하지 않고 변경사항만 보관해두고 싶을 때 사용.  
한 번도 commit하지 않은 파일은 branch를 변경해도 사라지지 않기 때문에 stash 안해도 됨.

- 컨벤션 (convention) : 프로그래밍 세계에서 서로 조직(특정 기술을 사용하는 사람들, 회사)에서 합의한 규칙  

- 깃이그노어 (.gitignore) : 파일들을 없는 것처럼 무시하게 하는 설정

- README.MD : 프로젝트를 소개하는 문서 MarkDown 파일

- 풀리퀘스트 (Pull Request, PR) : 내 작업내역을 바로 merge하지 않고, 참여하고 있는 프로젝트에 내 작업(branch)를 merge 해달라고 요청(Request)를 먼저 보내는 것.

- 포크 (fork) : 일종의 프로젝트 복사. 프로젝트를 복사해서 내 repo로 가져오는 것.

## 정리
### 커밋 3단계
1. commit할 파일만 선택(add, staging)
2. commit 메시지 작성
3. commit

### 충돌 피하는 법
1. Pull
2. Commit
3. Push  

Pull로 프로젝트를 받아서 commit으로 저장하고 push

### branch
- 브랜치명은 규칙을 가지고 잘 이름 지으면 프로젝트 관리가 쉬워진다.
- 작업이 완료되면 작업한 브랜치는 보통 삭제한다.
- 각 작업 브랜치에서 작업할 때는 다른 브랜치의 영향을 받지 않고 독립적으로 작업할 수 있다.

### 좋은 commit 메시지, 단위 작성의 중요성
- 어떤 작업을 했는지 commit history (commit log)만 보고 알 수 있다.
- 버그를 찾을 때와 코드 고치기 쉽다.
- 다른 사람이 코드를 리뷰할 때 편하다.

### 코드리뷰를 하는 이유
- 코드의 품질을 높일 수 있다.
- 다른 사람의 눈으로 버그를 빠르게 발견할 수 있다.
- 서로의 지식을 나누면서, 더 나은 방법을 찾아낼 수 있다.

### 협업의 단계
1. 누가 이 작업 할 것인지 정한다. - Issue
2. 각자 맡은 것을 작업한다. - Branch
3. 각자 작업을 프로젝트에 합친다. - merge
(경우에 따라). 작업한 내용을 리뷰하고 최종적으로 프로젝트에 반영한다. - PR 후 merge