Feature: phone arama testi
  Scenario: TC01 kullanici testotomasyonun sitesinde phone aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    When arama kutusuna phone yazip aratir
    Then arama sonucunda urun bulunabildigini test eder



  Scenario: TC02 kullanici testotomasyonun sitesinde dress aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    When arama kutusuna dress yazip aratir
    Then arama sonucunda urun bulunabildigini test eder

  @paralel2
  Scenario: TC03 kullanici testotomasyonun sitesinde apple aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    Then arama kutusuna apple yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
