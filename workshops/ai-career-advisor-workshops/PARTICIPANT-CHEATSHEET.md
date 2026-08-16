# Cheatsheet uczestnika — AI Career Advisor

Jedna strona nawyków: **jak rozmawiać ze skillem, żeby CV było mocne i uczciwe.**

---

## Start

```text
uruchom AI Career Advisor
```

Inne:

```text
kontynuuj od miejsca, w którym skończyliśmy
zrób CV z tego, co już mamy pod rolę X
```

Workspace = folder sesji (`workshops/moja-sesja`), nie root całego repo.

---

## Łańcuch (zapamiętaj)

| Warstwa | Sens |
|---------|------|
| **Career Database** (`candidate/`) | Prawda o Tobie |
| **Profil kompetencji** | Raport z bazy (`competency-profile.md`) |
| **cv-plan** | Co pokazać pod *jedną* rolę docelową |
| **cv.md** | Tekst CV |

Skill **nie dokłada** skilli „bo tak jest w ofercie”, jeśli nie ma ich w bazie.

---

## Pro tipy — świetne wyniki

### 1. Mów konkretami, nie etykietami

Źle: „Jestem proaktywna/y i lubię jakość.”  
Dobrze: „W tamtym projekcie: własne scenariusze regresji przed release’m + pilnowanie retestów po fixach.”

### 2. Oddziel *używanie* od *mocnej kompetencji*

„Przejście przez Jirę” ≠ „prowadzenie procesu defect management”.  
Na TAK / TROCHĘ / NIE odpowiadaj uczciwie — TROCHĘ jest OK i ląduje jako PARTIAL.

### 3. CV / LinkedIn = punkt wyjścia, nie wyrok

Możesz powiedzieć: „To z CV jest nieaktualne — od tamtej pory…”  
Agent ma iść za **Tobą**, nie za starym PDF-em.

### 4. Ownership > lista narzędzi

Zamiast listy 20 narzędzi opisz: co było **Twoje**, co zespołu, czego pilnowałaś/eś end-to-end.

### 5. Achievements tylko z historii

Nie wymyślaj procentów. Wystarczy: było X → zrobiłaś/eś Y → jest Z (nawet bez liczby).

### 6. Na archaeology: ok. 5 ostatnich doświadczeń

Głębiej na nich. Starsze: jedna linia. Resztę dokończysz później.

### 7. Target role = etykieta nagłówka CV

np. QA Specialist / Manual Tester.  
To **nie** nadpisuje oficjalnych tytułów w historii zatrudnienia.

### 8. Proś o pozycjonowanie, nie o fałsz

OK: „Pod tę rolę rozbuduj API testing, skróć grafikę.”  
Nie OK: „Dopisz Cypress, bo rekruterzy tego chcą” (jeśli tego nie robiłaś/eś).

### 9. Skills na CV = tabela grup

Na końcu upewnij się, że agent zrobił **pogrupowaną** sekcję Skills (nie jedną ścianę tagów).

### 10. Po warsztacie

- Dokończ market mirror (`04`) i ewentualnie grilling (`05`).  
- Drugi wariant CV = nowy `cv-plan`, ta sama baza.  
- Kontynuacja: „kontynuuj…” — bez begin from scratch.

---

## Gdzie szukać plików

```text
candidate/     → pamięć profilu (agent zapisuje w tle)
outputs/
  competency-profile.md
  cv/<target>/cv-plan.yaml
  cv/<target>/cv.md          ← Twoje CV
```

Telefon / email: dopiero przy eksporcie CV (nie muszą być w bazie).

---

## Mini checklist przed „gotowe”

- [ ] Mam jasny target role  
- [ ] Ok. 5 ostatnich doświadczeń opisanych konkretnie  
- [ ] Skills = grupy, tylko to, co potwierdziłaś/eś  
- [ ] Zero wymyślonych metryk  
- [ ] `cv.md` czytelne na pierwszej stronie: osoba, rola, About, Skills  
