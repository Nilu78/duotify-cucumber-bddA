package pages;

import lombok.Data;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.Driver;
@Data
public class LoginPage {

    @FindBy(id = "loginUsername")
    private WebElement loginUsername;
    @FindBy (id = "loginPassword")
    private WebElement loginPassword;

    public LoginPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    public void login (String user, String password){
        getLoginUsername().sendKeys(user);
        getLoginPassword().sendKeys(password, Keys.ENTER);
    }
}
