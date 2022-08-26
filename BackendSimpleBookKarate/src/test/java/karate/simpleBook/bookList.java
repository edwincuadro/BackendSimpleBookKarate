package karate.simpleBook;

import com.intuit.karate.junit5.Karate;

public class bookList {
    @Karate.Test
    Karate BookList(){
        return Karate.run("classpath:karate/simpleBook/bookList/bookList.feature").relativeTo(getClass());
    }
}
