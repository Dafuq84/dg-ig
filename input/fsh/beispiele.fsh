/* ---------------------------------------------------------------------------
 * --  _____       _____ _______                                             -
 * -- |_   _|     |_   _|__   __|                                            -
 * --   | |  _ __   | |    | |       Institute of Computer Science           -
 * --   | | | '_ \  | |    | |       Zurich University of                    -
 * --  _| |_| | | |_| |_   | |       Applied Sciences                        -
 * -- |_____|_| |_|_____|  |_|       8401 Winterthur, Switzerland            -
 * ---------------------------------------------------------------------------
 */

// =====================================================================
// Schritt 6: Beispiel
//
// Erstellt ein gültiges Beispiel zu eurem Profil. Patientin, Ärztin und
// Praxis gibt es schon (basis-beispiele.fsh). Entfernt die // und ersetzt
// die TODOs. Das Beispiel muss alle Regeln aus eurem Profil erfüllen,
// auch die Invariante: Ist die Allergie bestätigt (confirmed), braucht
// sie eine Reaktion.
// =====================================================================

Instance: PenicillinAllergieAnna
InstanceOf: DgMedicationAllergy
Usage: #example
Title: "Penicillin-Allergie von Anna Muster"
Description: "Bestätigte Penicillin-Allergie mit Urtikaria, erfasst von Dr. Sara Keller. Beginn nur als ungefähres Alter bekannt."
* patient = Reference(AnnaMuster)
* category = #medication
* clinicalStatus = $allergy-clinical#active
* verificationStatus = $allergy-verification#confirmed
* code = $sct#91936005 "Allergy to penicillin (finding)"
* criticality = #high
* onsetAge = 30 'a' "Jahre"
* recorder = Reference(DrSaraKeller)
* reaction.manifestation = $sct#126485001 "Urticaria (disorder)"



Instance: HansNoetig
InstanceOf: CHCorePatient
Usage: #example
Title: "Hans Noetig"
Description: "Beispielpatient nach CH Core Patient."
* name.family = "Noetig"
* name.given = "Hans"
* gender = #male
* birthDate = "1972-09-03"


Instance: KortisonAllergieHans
InstanceOf: DgMedicationAllergy
Usage: #example
Title: "Kortison-Allergie von Hans Noetig"
Description: "Bestaetigte Allergie gegen Kortikosteroide mit Angioedema, erfasst von Dr. Sara Keller. Beginn nur als ungefaehres Alter bekannt."
* patient = Reference(HansNoetig)
* category = #medication
* clinicalStatus = $allergy-clinical#active
* verificationStatus = $allergy-verification#confirmed
* code = $sct#294677009 "Allergy to corticosteroid and/or corticosteroid derivative (finding)"
* criticality = #high
* onsetAge = 30 'a' "Jahre"
* recorder = Reference(DrSaraKeller)
* reaction.manifestation = $sct#41291007 "Angioedema (disorder)"