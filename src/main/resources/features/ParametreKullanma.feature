Feature: kullanici aranacak kelime icin parametre kullanabilmeli

  Scenario: TC01 kullanici testotomasyonun sitesinde baby aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    When arama kutusuna "baby" yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    Then 3 saniye bekler
    And sayfayi kapatir

  Scenario: TC02 kullanici testotomasyonun sitesinde samsung aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    When arama kutusuna "samsung" yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And sayfayi kapatir

  Scenario: TC03 kullanici testotomasyonun sitesinde backpack aratip sonuc bulabilmeli

    Given kullanici test otomasyonu sayfasine gider
    Then arama kutusuna "backpack" yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And sayfayi kapatir