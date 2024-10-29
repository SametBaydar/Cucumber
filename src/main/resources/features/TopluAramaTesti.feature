Feature: Kullanici liste olarak verilen tum urunleri aratir
  @WIP
  Scenario Outline: TC10 liste olarak verilen tum urunler icin sonuc bulunabilmeli

    Given kullanici test otomasyonu sayfasine gider
    Then arama kutusuna "<Urunler>" yazip aratir
    Then arama sonucunda urun bulunabildigini test eder
    And 2 saniye bekler


    Examples:
    |Urunler|
    |phone  |
    |baby   |
