---
theme: default
title: AI Career Advisor Workshops
info: |
  Warsztat ~3 h — profil kompetencji z agentem AI, dopiero potem CV
class: text-center
layout: center
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
fonts:
  sans: DM Sans
  mono: JetBrains Mono
  weights: '400,600,700,800'
colorSchema: light
---

<!--
Theme accents: white + light purple + dark purple
Plan: blok warsztatu ≠ stage skilla; blok 6 = agent 10–15 ofert + dopytanie kompetencji; PL + neutralna forma
-->

# WARSZTATY CV + AI

<p class="cover-sub" style="color: #1a1225; margin-top: 2.75rem;">
  Zbuduj swój profil kompetencji z agentem AI<br />
  a dopiero potem <strong style="color: #6d28d9;">CV</strong>! 🚀
</p>

<div class="cover-pills" style="margin-top: 3rem;">
<span class="pill">~3 h</span>
<span class="pill">hands-on</span>
<span class="pill">Cursor · Claude Code · Codex</span>
</div>

<p class="cover-foot">
<span class="cover-ig" aria-hidden="true">📸</span>
@flynerd.pl · NerdsCodingGang
</p>

---
layout: center
class: text-center
---

# Co dziś zbudujesz?

<div class="aca-deliverables">
  <div>
    <strong>Career Database</strong>
    <p>→ Twoja uporządkowana baza doświadczenia i kompetencji</p>
  </div>
  <div>
    <strong>Mapę kompetencji</strong>
    <p>→ Rzeczy, które naprawdę umiesz <em>także te wcześniej nienazwane</em> ;)</p>
  </div>
  <div>
    <strong>CV pod wybraną rolę</strong>
    <p>→ Nie zmyślone, a zbudowane z potwierdzonych danych</p>
  </div>
</div>

<p class="aca-punch">
  CV jest efektem końcowym. Najważniejszym produktem jest <i>profil kompetencji</i>.
</p>

---
layout: center
class: text-center
---

# Dlaczego zwykłe "CV-boty" zawodzą?

<ol class="aca-grid">
  <li><span class="aca-x" aria-hidden="true">×</span>pytają formularzowo</li>
  <li><span class="aca-x" aria-hidden="true">×</span>za szybko piszą CV</li>
  <li><span class="aca-x" aria-hidden="true">×</span>wierzą staremu LinkedInowi</li>
  <li><span class="aca-x" aria-hidden="true">×</span>nie dopytują</li>
  <li><span class="aca-x" aria-hidden="true">×</span>mylą „było w projekcie” z „umiem”</li>
  <li><span class="aca-x" aria-hidden="true">×</span>nie odkrywają kompetencji ukrytych</li>
</ol>

<div class="aca-panel">
  <div class="aca-panel__title">„Patrzę w logi”</div>
  <div class="aca-panel__tags">
    <span>observability</span>
    <span>troubleshooting</span>
    <span>RCA</span>
  </div>
  <div class="aca-panel__foot">
    <span class="aca-dim">Bot zapisze „logs”</span>
    <span class="aca-hit">Agent dopyta →</span>
  </div>
</div>

---
layout: center
class: text-center
---

# To nie jest warsztat z promptowania ⚠️ 

<div class="aca-contrast">
  <div class="aca-contrast__bad">
    <span class="aca-contrast__label">Nie prosimy AI</span>
    <p>„Napisz mi dobre CV”</p>
  </div>
  <div class="aca-contrast__good">
    <span class="aca-contrast__label">Budujemy proces</span>
    <div class="aca-stack">
      <span>agent</span>
      <span>+</span>
      <span>skill</span>
      <span>+</span>
      <span>pamięć</span>
      <span>+</span>
      <span>dane</span>
    </div>
  </div>
</div>

<p class="aca-punch">
  AI prowadzi pracę. Nie tylko odpowiada na pytania.
</p>

---
layout: center
class: text-center
---

# Skąd ta różnica?

<div class="aca-pair">
  <p class="aca-dim aca-dim--strike">Chatbot odpowiada i halucynuje</p>
  <p class="aca-hit">Agent zbiera wiedzę i prowadzi proces</p>
</div>

---
layout: center
class: text-center
---

# Chatbot a agent AI — jaka jest różnica?

<table class="aca-table aca-table--contrast">
  <thead>
    <tr>
      <th>Chatbot</th>
      <th>Agent AI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>odpowiada na prompt</td>
      <td>realizuje cel</td>
    </tr>
    <tr>
      <td>działa w kontekście rozmowy</td>
      <td>korzysta z narzędzi i plików</td>
    </tr>
    <tr>
      <td>czeka na kolejne polecenie</td>
      <td>sam wybiera kolejny krok</td>
    </tr>
    <tr>
      <td>daje odpowiedź</td>
      <td>prowadzi proces</td>
    </tr>
  </tbody>
</table>

<p class="aca-punch aca-punch--sm">
  Dziś pracujemy z agentem — nie z „napisz mi CV”.
</p>

---
layout: center
class: text-center
---

# Czym jest SKILL AI?

<div class="aca-pair">
  <p class="aca-dim">Nie mówi tylko <em>co</em> zrobić.</p>
  <p class="aca-ink">Definiuje <strong class="aca-hit">sposób działania</strong>.</p>
</div>

<ul class="aca-grid aca-grid--accent aca-grid--sm">
  <li>instrukcje</li>
  <li>workflow</li>
  <li>zasady</li>
  <li>pamięć procesu</li>
</ul>

<p class="aca-punch aca-punch--sm">
  Dzięki Skillowi agent prowadzi powtarzalny proces krok po kroku.
</p>

---
layout: center
class: text-center
---

# Dlaczego pracujemy w narzędziu agentowym?

<p class="aca-lead">
  Bo agent potrzebuje <strong>miejsca do pracy</strong>
</p>

<ul class="aca-list">
  <li>czyta pliki projektu</li>
  <li>zapisuje stan pracy</li>
  <li>wraca do wcześniejszych ustaleń</li>
  <li>korzysta ze skilla i workflow</li>
  <li>aktualizuje Career Database krok po kroku</li>
</ul>

<p class="aca-punch aca-punch--sm">
  Zwykły chat prowadzi rozmowę. Agent pracuje na trwałym workspace.
</p>

<p class="aca-tools-line">
  Przykłady narzędzi agentowych: Cursor · Claude Code · Codex
</p>

---
layout: center
class: text-center
title: Agent musi pamiętać
---

# Agent musi pamiętać

<p class="aca-lead">
  Rozmowa to <strong>za mało</strong>
</p>

<div class="aca-block aca-block--sm">
  <p class="aca-note">Dlatego zapisujemy wiedzę w plikach:</p>
  <ul class="aca-list aca-list--flush">
    <li>wnioski z rozmowy</li>
    <li>wnioski z plików wejściowych</li>
  </ul>
</div>

<p class="aca-frame">
  <strong>Career Database</strong> = pamięć całego procesu
</p>

---
layout: center
class: text-center
---

# Jak pracuje nasz AI Career Advisor?

<div class="aca-flow">
  <span>pyta</span>
  <span class="aca-flow__arrow">→</span>
  <span>zapisuje</span>
  <span class="aca-flow__arrow">→</span>
  <span>sprawdza luki</span>
  <span class="aca-flow__arrow">→</span>
  <span>dopytuje</span>
  <span class="aca-flow__arrow">→</span>
  <span>weryfikuje</span>
  <span class="aca-flow__arrow">→</span>
  <span class="aca-flow__end">dopiero potem tworzy CV</span>
</div>

---

# Flow warsztatu · ~3 h

<div class="flow-timeline">
  <div class="flow-step">
    <span class="flow-no">0</span>
    <span class="flow-title">Ustawienia</span>
    <span class="flow-time">10′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">1</span>
    <span class="flow-title">Mindset: jak pracujemy z agentem</span>
    <span class="flow-time">5′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">2</span>
    <span class="flow-title">Onboarding</span>
    <span class="flow-time">10′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">3</span>
    <span class="flow-title">Cel zawodowy</span>
    <span class="flow-time">10′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">4</span>
    <span class="flow-title">Archeologia kariery</span>
    <span class="flow-time">45′</span>
  </div>
  <div class="flow-step flow-break">
    <span class="flow-no"></span>
    <span class="flow-title">Przerwa</span>
    <span class="flow-time">10′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">5</span>
    <span class="flow-title">Umiejętności i osiągnięcia</span>
    <span class="flow-time">20′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">6</span>
    <span class="flow-title">Rynek i weryfikacja kompetencji</span>
    <span class="flow-time">30′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">7</span>
    <span class="flow-title">Profil zawodowy</span>
    <span class="flow-time">10′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">8</span>
    <span class="flow-title">Plan CV i CV</span>
    <span class="flow-time">25′</span>
  </div>
  <div class="flow-step">
    <span class="flow-no">9</span>
    <span class="flow-title">Co dalej</span>
    <span class="flow-time">5′</span>
  </div>
</div>

---
layout: center
class: text-center aca-section
---

# Blok 0 · Ustawienia

<span class="pill">10 minut</span>

---

# Setup

1. **Skopiuj starter**  
   Otwórz folder `workshops` → skopiuj `_blank` → wklej obok → nazwij kopię np. `moja-sesja`.

2. **Otwórz ten folder w Cursorze / Claude / Codex**  
   **File → Open Folder** → wybierz `moja-sesja`  
   (folder z kopii, **nie** cały `ai-career-advisor`).

3. **Skill jest już w środku** — nic nie instalujesz.

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~5 min</p>
  <p>Skopiuj starter · otwórz folder · uruchom agenta · sprawdź, że chat „słyszy” Career Advisor.</p>
</div>

---

# Komenda startu

```text
uruchom AI Career Advisor
```

Działa też:

```text
Pomóż mi zbudować CV
```

Agent wchodzi w tryb **career companion** — rozmowa, nie log „updated YAML”.

<div class="done-line"><span>Gotowe:</span> widzisz pytanie o CV / LinkedIn albo o kontynuację profilu.</div>

---
layout: center
class: text-center aca-section
---

# Blok 1 · Mindset: jak pracujemy z agentem

<span class="pill">5 minut</span>

---

# Jak powstaje Twoje CV

<div class="chain-grid">
  <div class="layer-card">
    <strong>1. Baza kariery</strong>
    Fakty o Tobie<br/><code>candidate/</code>
  </div>
  <div class="layer-card">
    <strong>2. Profil kompetencji</strong>
    Podsumowanie z bazy<br/><code>outputs/</code>
  </div>
  <div class="layer-card">
    <strong>3. Plan CV</strong>
    Co podkreślamy<br/>pod <em>jedną</em> rolę
  </div>
  <div class="layer-card">
    <strong>4. CV</strong>
    Gotowy tekst<br/>pod tę rolę
  </div>
</div>

<p class="chain-note">Najpierw prawda w bazie — dopiero potem CV. Nic „pod ofertę” nie jest dopisywane z powietrza.</p>

**Wybieramy z tego, co jest.** Nie wymyślamy.

---

# Trzy złote reguły

1. **Stare CV / LinkedIn = podpowiedź**, nie wyrok
2. **Używasz X ≠ jesteś w tym mocna/y**
3. **Tytuł na umowie ≠ poziom** — liczy się zakres realnej pracy

<div class="pro-tip">
  <strong>Pro tip:</strong> Proś o podkreślenie mocnych stron (rozbuduj testowanie API), nie o fałsz (dopisz C#, Go i Rust).
</div>

---
layout: center
class: text-center aca-section
---

# Blok 2 · Onboarding

<span class="pill">10 minut</span>

---

# Opcjonalne CV / LinkedIn

Agent zapyta, czy masz PDF.  
Możesz **pominąć** i iść rozmową — to pełnoprawna ścieżka.

Jeśli wrzucasz dokument: zaraz będzie pytanie o **świeżość**  
(„czy od tamtej pory coś się zmieniło?”).

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~7 min</p>
  <p>Odpowiedz na welcome · wrzuć CV <em>albo</em> napisz, że startujesz bez dokumentów.</p>
</div>

<div class="done-line"><span>Gotowe:</span> przeszliście do pytania o to, co robisz dziś / czego szukasz.</div>

---
layout: center
class: text-center aca-section
---

# Blok 3 · Cel zawodowy

<span class="pill">10 minut</span>

---

# Teraz → dokąd?

Na nagłówek CV wybierasz **jedną** rolę docelową  
(np. QA Specialist, IT Support, C# Engineer).

To tylko etykieta nagłówka — **nie** zmienia tytułów w historii pracy.

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~5 min</p>
  <p>Powiedz agentowi: gdzie jesteś dziś, czego szukasz i jaką <strong>jedną</strong> rolę chcesz na nagłówku.</p>
</div>

<div class="pro-tip">
  <strong>Pro tip:</strong> Bałagan jest OK 🙂 Lepiej napisać <em>chcę wrócić do QA w produkcie B2B</em> niż listę 8 tytułów. Zastanów się, na jakie role chcesz aplikować? 🎯
</div>

---
layout: center
class: text-center aca-section
---

# Blok 4 · Archeologia kariery

<span class="pill">45 minut</span>

---

# 5 ostatnich doświadczeń

Na warsztacie **nie** odkopujemy całej kariery — bierzemy ok. **5 ostatnich** ról / doświadczeń.

Dla każdej z nich opowiedz:

1. produkt / domena  
2. typowy tydzień — **Twoja** praca  
3. co było Twoje vs zespołu  
4. nazwane projekty / produkty (jeśli były)

<table class="aca-table aca-table--min">
  <thead>
    <tr>
      <th>Bare minimum — wystarczy <strong>jedno</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr><td>aktualny LinkedIn</td></tr>
    <tr><td>stare CV</td></tr>
    <tr><td>spisane daty zatrudnień — najlepiej <strong>mies. rok – mies. rok</strong></td></tr>
  </tbody>
</table>

---

# Co w pracy ważne?

Przy każdej roli warto też powiedzieć:

- co było **ważną lekcją** wyniesioną z tego doświadczenia  
- **dlaczego** to doświadczenie jest dla Ciebie ważne

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~35 min</p>
  <p>Weź ok. <strong>5 ostatnich</strong> doświadczeń. Odpowiadaj agentowi po kolei — jedno pytanie naraz.</p>
</div>

<div class="pro-tip">
  <strong>Pro tip:</strong> Nie chce Ci się pisać? Nagraj się głosowo 🎙️ — agent rozumie po polsku i po angielsku!
</div>

---

# Pułapka narzędziowa

> Obecnie pracuję z Postmanem.

To za mało — samo narzędzie **nie** znaczy, że ktoś coś umie głęboko albo że ma osiągnięcie.

Agent dopyta: *co dokładnie z tym robisz?*  
Konkret — np. sprawdzanie odpowiedzi API, budowanie kolekcji, odpalanie regresji.

<div class="pro-tip">
  <strong>Pro tip:</strong> Wymienienie narzędzi jest przydatne, ale lepiej wskazać, gdzie leżała odpowiedzialność — co ktoś faktycznie robił.
</div>

---
layout: center
class: text-center aca-section
---

# Przerwa

<span class="pill">10 minut</span>

Networking i zbieranie energii 🍪 ☕

---
layout: center
class: text-center aca-section
---

# Blok 5 · Umiejętności i osiągnięcia

<span class="pill">20 minut</span>

---

# Umiejętności z historii

Z archeologii agent wyciąga **umiejętności** — to, co ktoś naprawdę robi w pracy.  
To rdzeń profilu i CV.

- narzędzie na liście ≠ potwierdzona umiejętność  
- liczy się: co ktoś robi, za co odpowiada, na jakim poziomie  
- potem (blok 6) sprawdzimy je wobec rynku: TAK / TROCHĘ / NIE

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~10 min</p>
  <p>W rozmowie z agentem nazywamy umiejętności z opowiedzianych ról — co potrafię, a nie co było w projekcie.</p>
</div>

---

# Osiągnięcia z historii

<span class="pill">opcjonalnie</span>

Powiązane z umiejętnościami, ale **osobny** krok.  
Fajnie, gdy coś wyjdzie; jeśli nie — CV za dużo nie traci (umiejętności zostają).

Agent wraca do historii i szuka zmian: **jak było → co zrobiono → jaki jest efekt**.

<div class="cover-pills" style="margin-top: 1.25rem;">
  <span class="pill">IMPACT</span>
  <span class="pill">DELIVERY</span>
  <span class="pill">GROWTH</span>
</div>

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~10 min</p>
  <p>Etap można pominąć — ale spróbuj rozmowy z agentem i pogłębiajcie informacje.</p>
</div>

---
layout: center
class: text-center aca-section
---

# Blok 6 · Rynek i weryfikacja kompetencji

<span class="pill">30 minut · kluczowy · 10–15 ofert</span>

---

# Co robicie teraz

Agent wyszukuje **10–15 ofert** blisko Twojej roli  
i dopytuje o kompetencje. Ty odpowiadasz:

<div class="cover-pills" style="margin-top: 1.25rem;">
  <span class="pill">TAK</span>
  <span class="pill">TROCHĘ</span>
  <span class="pill">NIE</span>
  <span class="pill">NIE WIEM</span>
</div>

<p style="margin-top: 1rem;">
  Nic nie wklejasz i nigdzie nie aplikujesz — tylko rozmowa.
</p>

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~25 min</p>
  <p>Napisz: przechodzimy do rynku i weryfikacji kompetencji. Odpowiadaj uczciwie.<br />Niedosyt? W domu wróć do tej części — poproś agenta: <em>wróćmy do kroku Rynek i weryfikacja kompetencji</em>.</p>
</div>

---
layout: center
class: text-center aca-section
---

# Blok 7 · Profil zawodowy

<span class="pill">10 minut</span>

---

# Pięć filarów raportu

To **nie** jest CV — to czytelne podsumowanie bazy:

<ol class="aca-list">
  <li>Główne ścieżki kariery <span class="aca-en">(Main tracks)</span></li>
  <li>Potwierdzone / częściowe umiejętności <span class="aca-en">(Confirmed / partial skills)</span></li>
  <li>Hipotezy poziomu doświadczenia <span class="aca-en">(Seniority hypotheses)</span></li>
  <li>Najmocniejsze dowody <span class="aca-en">(Strongest evidence)</span></li>
  <li>Możliwe kierunki rozwoju <span class="aca-en">(Potential career directions)</span></li>
</ol>

Plik: `outputs/competency-profile.md`

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~7 min</p>
  <p>Poproś o podsumowanie profilu albo przejrzyj plik w <code>outputs/</code>.</p>
</div>

---
layout: center
class: text-center aca-section
---

# Blok 8 · Plan CV i CV

<span class="pill">25 minut</span>

---

# Najpierw plan, potem tekst

<p class="aca-lead">
  Agent najpierw robi <strong>plan CV</strong> pod jedną rolę — to ważny krok, nie formalność:
</p>

<ul class="aca-list">
  <li>jaka rola na nagłówku + język (pl / en)</li>
  <li>kolejność sekcji</li>
  <li>które umiejętności (w grupach)</li>
  <li>które doświadczenia szerzej / krócej</li>
  <li>które osiągnięcia (jeśli są)</li>
  <li>limit stron (max 4)</li>
</ul>

<p class="aca-punch aca-punch--sm">
  Im dokładniej ustalicie plan, tym lepsze CV. Dopiero potem agent generuje plik z bazy.
</p>

<div class="pro-tip">
  <strong>Pro tip:</strong> Na warsztacie możesz zrobić <em>docelowe</em> CV albo <em>robocze</em> — zależnie od bazy. Plan i tak omówcie dokładnie.
</div>

---

# Potem agent generuje CV

Po uzgodnionym planie agent **pisze plik CV** — to osobny krok, nie „dokończenie rozmowy”:

<ul class="aca-list">
  <li>bierze tylko to, co ustaliliście w planie</li>
  <li>czyta fakty z bazy kariery (nie z ofert)</li>
  <li>układa tekst: O mnie → umiejętności → doświadczenie…</li>
  <li>zapisuje wariant w <code>outputs/cv/</code> pod wybraną rolę</li>
</ul>

<p class="aca-punch aca-punch--sm">
  Plan = co podkreślamy. CV = gotowy tekst z bazy. Nic nowego „pod ofertę”.
</p>

---

# Checklist po CV

<ul class="aca-list" style="list-style: none; padding-left: 0;">
  <li>✅ Nagłówek: osoba + rola</li>
  <li>✅ Krótki opis O mnie</li>
  <li>✅ Umiejętności = pogrupowane (nie ściana tagów)</li>
  <li>✅ Szersze role mają konkretne punkty</li>
  <li>✅ Zero wymyślonych metryk / narzędzi</li>
  <li>✅ Mieści się w limicie stron</li>
</ul>

<p class="aca-note" style="margin-top: 1rem;">
  Plik: <code>outputs/cv/&lt;rola&gt;/cv.md</code> — dopiero <strong>po</strong> uzgodnionym planie.
</p>

<div class="your-turn">
  <div class="your-turn-label">Twoja kolej</div>
  <p class="your-turn-time">⏱ ~18 min</p>
  <p>Podaj rolę + język (pl/en). Omówcie plan, potem poproś o wygenerowanie CV. Otwórz plik i sprawdź checklistę.</p>
</div>

---
layout: center
class: text-center aca-section
---

# Blok 9 · Co dalej

<span class="pill">5 minut</span>

---

# Jak wrócić później

<p class="aca-lead">
  Otwórz ten sam folder sesji i napisz agentowi jedną z dwóch rzeczy:
</p>

<div class="chain-grid chain-grid--lower">
  <div class="layer-card">
    <strong>Kontynuacja procesu</strong>
    <pre class="aca-console">kontynuuj od miejsca, w którym skończyliśmy</pre>
    <p style="margin: 0.65rem 0 0; font-size: 0.98rem; font-weight: 550; line-height: 1.35;">
      Agent wraca do niedokończonego kroku — np. archeologii, rynku albo profilu.
    </p>
  </div>
  <div class="layer-card">
    <strong>CV z gotowej bazy</strong>
    <pre class="aca-console">zrób CV z tego, co już mamy pod rolę X</pre>
    <p style="margin: 0.65rem 0 0; font-size: 0.98rem; font-weight: 550; line-height: 1.35;">
      Nowe CV z tego, co już jest w bazie — pod tę rolę. Bazy nie kasuje.
    </p>
  </div>
</div>

<p class="chain-note" style="margin-top: 1.35rem; font-size: 1.05rem; color: var(--aca-ink); font-weight: 550;">
  Chcesz CV pod inną rolę? Z tej samej bazy powstaje nowy plan i nowy plik — bez zaczynania od zera.
</p>

---

# Do domu 🏠

1. **Cheatsheet** — nawyki rozmowy ze skillem  
2. Niedosyt przy rynku? Poproś agenta: *wróćmy do kroku Rynek i weryfikacja kompetencji*  
3. CV pod **inną rolę** = nowy plan z tej samej bazy  

<div class="pro-tip">
  <strong>Pro tip:</strong> Najlepsze CV z tego skilla powstają, gdy mówisz konkretami z realnej pracy — nie jak w LinkedIn About.
</div>

---
layout: center
class: text-center
---

# Dziękujemy

**NerdsCodingGang — Warsztaty**

pytania · dyskusja · feedback
