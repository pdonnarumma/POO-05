package br.com.fatecpg.quizquestion;

import java.util.ArrayList;

/**
 *
 * @author pdonnarumma
 */
public class Quiz {
    private static ArrayList<Questions> test;
    public static ArrayList<Questions> getTest()
    {
        if(test == null)
        {
            test = new ArrayList<>();
            test.add(new Questions("1+2", "3", new String[]{"1","2","3"}));
            test.add(new Questions("1+3", "4", new String[]{"1","2","4"}));
            test.add(new Questions("1+4", "5", new String[]{"1","3","5"}));
            test.add(new Questions("1+5", "6", new String[]{"2","4","6"}));
            test.add(new Questions("1+6", "7", new String[]{"2","3","7"}));
        }
        
    return test;
    }
}
