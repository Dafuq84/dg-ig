<!--
  Schritt 7: Startseite eures IG
  Ersetzt die TODOs durch eigenen Text. Markdown ist erlaubt.
  Diese Seite ist die erste, die man auf GitHub Pages sieht.
-->

### Use Case

Eine Hausarztpraxis erfasst Arzneimittelallergien ihrer Patientinnen und Patienten strukturiert und mit Codes. So kann eine Notfallstation die Angaben zuverlässig auswerten, auch wenn sie die Patientin nicht kennt. Besonders wichtig sind dabei der Auslöser, die Gefährlichkeit und die bekannten Reaktionen.

### Scope

Dieses IG deckt nur Allergien gegen Arzneimittel ab. Nahrungsmittel-, Umwelt- und andere Allergien sowie Unverträglichkeiten ohne allergischen Hintergrund sind bewusst ausgeschlossen. Es definiert ein Profil auf Basis von CH Core AllergyIntolerance und verwendet die Schweizer Allergieliste aus CH Term.

### Artefakte

* [DG Arzneimittelallergie](StructureDefinition-dg-medication-allergy.html): Profil für eine Arzneimittelallergie, wie sie in der Hausarztpraxis erfasst und auf der Notfallstation gelesen wird. Es wendet die Invariante dg-allergy-1 an: Eine bestätigte Allergie muss mindestens eine Reaktion dokumentieren.
* [Penicillin-Allergie von Anna Muster](AllergyIntolerance-PenicillinAllergieAnna.html): Beispiel einer bestätigten Penicillin-Allergie mit Urtikaria, Beginn als ungefähres Alter erfasst.
* [Kortison-Allergie von Hans Nötig](AllergyIntolerance-KortisonAllergieHans.html): Beispiel einer bestätigten Allergie gegen Kortikosteroide mit Angioödem.

### Abhängigkeiten

Dieses IG baut auf [CH Core 6.0.0](https://fhir.ch/ig/ch-core/6.0.0/) auf.

### Autorin oder Autor

Samuel Schulthess

<p style="font-size:smaller">Erstellt im Lab des Moduls Data Standards in Healthcare, ZHAW, HS26. Kein offizieller Standard.</p>
