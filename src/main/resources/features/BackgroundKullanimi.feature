@WIP
Feature: kullanici ortak on adimlar icin Background kullanilabilir

  Background: anasayfaya gitme
    Given kullanici test otomasyonu sayfasine gider

  Scenario: TC04 kullanici testotomasyonun sitesinde phone aratip sonuc bulabilmeli

    When arama kutusuna phone yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And sayfayi kapatir

  Scenario: TC05 kullanici testotomasyonun sitesinde dress aratip sonuc bulabilmeli

    When arama kutusuna dress yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And sayfayi kapatir

  Scenario: TC06 kullanici testotomasyonun sitesinde apple aratip sonuc bulabilmeli

    Then arama kutusuna apple yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And sayfayi kapatir