package karate.simpleBook;

import com.intuit.karate.junit5.Karate;

public class Authentication {
    @Karate.Test
    Karate BookList(){
        return Karate.run("classpath:karate/simpleBook/authentication/authentication.feature").relativeTo(getClass());
    }
}
