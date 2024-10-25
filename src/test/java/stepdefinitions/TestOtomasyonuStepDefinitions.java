package stepdefinitions;

import dev.failsafe.internal.util.Assert;
import io.cucumber.java.en.*;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.Keys;
import pages.TestOtomasyonuPage;
import utilities.ConfigReader;
import utilities.Driver;
import utilities.ReusableMethods;

public class TestOtomasyonuStepDefinitions {

    TestOtomasyonuPage testOtomasyonuPage = new TestOtomasyonuPage();

    @Given("kullanici test otomasyonu sayfasine gider")
    public void kullanici_test_otomasyonu_sayfasine_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("toURLTestOtomasyon"));

    }
    @When("arama kutusuna phone yazip aratir")
    public void arama_kutusuna_phone_yazip_aratir() {
        testOtomasyonuPage.aramaKutusu.sendKeys("phone" + Keys.ENTER);

    }
    @Then("arama sonucunda urun bulunabildigini test eder")
    public void arama_sonucunda_urun_bulunabildigini_test_eder() {

      String expectedYazi = testOtomasyonuPage.aramaSonucuYaziElementi.getText();
      // 4 products found
        String sonucBulunamadiYazisi = ConfigReader.getProperty("toBulunamadiYazisi");
        // ürün bulundu ise bu ikisi eşit olmamalı
        Assertions.assertNotEquals(sonucBulunamadiYazisi,expectedYazi);

    }
    @Then("sayfayi kapatir")
    public void sayfayi_kapatir() {
        Driver.quitDriver();

    }

    @When("arama kutusuna dress yazip aratir")
    public void aramaKutusunaDressYazipAratir() {
        testOtomasyonuPage.aramaKutusu.sendKeys("dress"+Keys.ENTER);
    }

    @Then("arama kutusuna apple yazip aratir")
    public void aramaKutusunaAppleYazipAratir() {
        testOtomasyonuPage.aramaKutusu.sendKeys("apple"+Keys.ENTER);
    }

    @When("arama kutusuna {string} yazip aratir")
    public void aramaKutusunaYazipAratir(String aranacakKelime) {
        testOtomasyonuPage.aramaKutusu.sendKeys(aranacakKelime+Keys.ENTER);

    }

    @Then("{int} saniye bekler")
    public void saniyeBekler(int saniye) {
        ReusableMethods.bekle(saniye);
    }
}
