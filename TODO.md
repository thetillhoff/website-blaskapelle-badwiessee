# TODO

## Vor dem Go-Live

- Bot-/Crawler-Sperre entfernen: `static/robots.txt` löschen und die `noindex`/`nofollow`-Meta-Tags in `layouts/_default/baseof.html` entfernen, sobald die Seite öffentlich gehen soll.

## Rechtliches

- Vereinsregister prüfen: Ist die Musikvereinigung Bad Wiessee ein eingetragener Verein? Falls ja, verlangt § 5 DDG Registergericht und Registernummer im Impressum, und der Name muss „e.V." enthalten.
- Impressum und Datenschutzerklärung stammen aus einem älteren e-Recht24-Generator und wurden nur punktuell aktualisiert (TMG → DDG, Google Analytics entfernt, Hosting/Netlify und Betroffenenrechte ergänzt). Vor dem Go-Live einmal komplett neu generieren oder anwaltlich prüfen lassen.

## Konfiguration / Daten

- Zwölf Bilder in `assets/images/` werden nirgends verwendet. Hugo verarbeitet und veröffentlicht sie nicht, sie kosten also weder Bauzeit noch Ladezeit — nur Platz im Repository (0,85 MB). Prüfen, ob eines davon auf eine Seite gehört, sonst löschen:
  `adventskonzert-blaskapelle-bad-wiessee.jpg`, `adventskonzert.jpg`, `i57dae88431485983.jpg` (dasselbe Vereinsbanner in drei Grössen),
  `i04a41873a90a5272.jpg`, `i25c9b4b14a0aa410.jpg`, `i352af00a6eba8eee.jpg`, `i9b6dd2db7bb0cd2c.jpg`, `ic2c181b892df49e5.jpg`,
  `id07145902dd1951f.jpg`, `ide56f889fa32aab1.jpg`, `if482115693157427.jpg`, `ifafa4a5385e9c8ad.jpg`.

- `data/gallery.yaml` — Die ersten fünf Fotos haben keinen Beschreibungstext (`caption: ""`). Beschreibungen ergänzen oder im Template einen Fallback einbauen, damit der `alt`-Text nie leer bleibt.

## Inhalte

- Chronik-Jahrzehnte 2010er/2020er — Die Daten in den Überschriften stammen aus den alten Blog-Veröffentlichungsdaten, sofern im Text kein Veranstaltungsdatum stand. Bei „Konzerte im Kurpark Abwinkel", „Unsere neue Homepage", „Eröffnung Lindenplatz", „Bergmesse am Kirchweihmontag", „Frühschoppen auf dem Wallberg" und „Kirchweihmontag auf der Aueralm" die tatsächlichen Veranstaltungsdaten prüfen.
- Chronik 2000 - 2009 — Seite fehlt komplett. Sobald der Text vom Verein vorliegt: `content/2000-2009.md` anlegen (`type: chronik`), Button in `layouts/chronik-1/list.html` und Menüeintrag in `hugo.toml` ergänzen.
- Einleitungstexte für 2000 - 2009, 2010 - 2019 und 2020 - 2029 — der Verein schreibt sie. Jeweils oben in die Jahrzehnt-Datei einfügen, so wie bei `content/1924-1929.md`.
- `content/ehrentafel.md` — Bildunterschrift und Alt-Text lauten „Albin Schmidt", alle anderen Stellen (Musikantenliste, Chronik) schreiben „Albin Schmied". Schreibweise vereinheitlichen.
- Fehlende Alt-Texte bei inhaltlichen Bildern: `content/1960-1969.md`, `content/1990-1999.md`, `content/ueber-uns/musikanten.md` sowie mehrere Bilder in `content/2010-2019.md`. Beschreibende Alt-Texte ergänzen.
- `content/mach-mit.md` — Galeriebilder haben keinen Alt-Text. Beschreibende Alt-Texte ergänzen oder Bilder als dekorativ auszeichnen.
