# 2025-Fall Semester Planner (GitHub)

**기준일:** 2025-09-29 (Asia/Seoul)

이 리포지토리는 학기 일정/공부 과제를 **GitHub Issues + Milestones + Actions**로 관리하기 위한 기본 템플릿입니다.

## 빠른 시작
1. GitHub에서 새 **Private** 리포지토리를 만든 뒤, 이 폴더의 파일들을 그대로 업로드합니다.
2. 리포지토리 **Settings → Actions** 에서 Actions 허용.
3. 로컬에서 GitHub CLI를 설치했다면 아래 `bootstrap.sh`로 **라벨/마일스톤**을 자동 생성하세요.
4. `New issue`를 누르면 제공되는 📚 Study Task 폼으로 과제를 등록할 수 있습니다.
5. 이슈 본문에 적은 **마감일**을 기준으로, 매일 아침(Asia/Seoul 09:00) 자동 리마인드가 달립니다.

## 설계 개요
- **Issues**: 과제/복습/모의고사 등 모든 작업을 이슈로 관리
- **Labels**: 과목/유형/상태를 색으로 구분
- **Milestones**: 주차/중간고사 기간을 마감일로 묶어서 한 눈에 확인
- **Actions**: 매일 마감 D-1/D-day/지연 이슈에 자동 코멘트 및 라벨링

## 추천 라벨
- 과목: `그래픽스`, `네트워크소켓`, `R데이터분석`, `블록체인`, `기계학습`, `빅데이터분석`
- 유형: `요약1p`, `유형문제`, `오답정리`, `실습/코드`, `모의고사`
- 상태: `due-soon`, `overdue`, `done`

## 추천 마일스톤
- `W1 (Sep29–Oct5)` → due: 2025-10-05
- `W2 (Oct6–Oct12)` → due: 2025-10-12
- `W3 (Oct13–Oct19)` → due: 2025-10-19
- `Midterms (Oct20–Oct23)` → due: 2025-10-23

## 이슈 검색(북마크용)
- 이번주: `is:open milestone:"W3 (Oct13–Oct19)" sort:updated-desc`
- 과목별: `is:open label:그래픽스 sort:created-desc`
- 마감 임박: `is:open label:"due-soon" -label:"done" sort:updated-desc`
- 지연: `is:open label:"overdue" -label:"done" sort:updated-desc`

---

### GitHub Projects(선택)
Projects(베타)를 쓰고 싶다면:
1) 새 Project 생성 → **Fields**에 `Status(단일선택)`, `Course(단일선택)`, `Type(단일선택)`, `Due(날짜)`, `Iteration(주간)` 추가  
2) **Views**: Board(칸반), Table, Roadmap(타임라인) 구성  
3) 이슈를 프로젝트에 추가하고, `Due`/`Iteration`으로 주간 뷰를 만들어 쓰면 편합니다.

