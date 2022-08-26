package karate.simpleBook;

import com.intuit.karate.junit5.Karate;


public class OrderBook {
    @Karate.Test
    Karate OrderBook(){
        return Karate.run("classpath:karate/simpleBook/bookOrder/bookOrder.feature").relativeTo(getClass());
    }
}