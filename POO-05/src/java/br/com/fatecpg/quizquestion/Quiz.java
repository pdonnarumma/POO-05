package br.com.fatecpg.quizquestion;

import java.util.ArrayList;
import java.util.Collections;


public class Quiz {
    private static ArrayList<Questions> test;
    private static ArrayList<Questions> randomtest;
    public static ArrayList<Questions> getTest()
    {
        if(test == null)
        {
            randomtest = new ArrayList<>();
            test = new ArrayList<>();
             
            randomtest.add(new Questions("1+2", "3", new String[]{"1","2","3"}));
            randomtest.add(new Questions("1+3", "4", new String[]{"1","2","4"}));
            randomtest.add(new Questions("1+4", "5", new String[]{"1","3","5"}));
            randomtest.add(new Questions("1+5", "6", new String[]{"2","4","6"}));
            randomtest.add(new Questions("1+6", "7", new String[]{"2","3","7"}));
            randomtest.add(new Questions("1+7", "8", new String[]{"1","8","3"}));
            randomtest.add(new Questions("1+8", "9", new String[]{"1","2","9"}));
            randomtest.add(new Questions("1+9", "10", new String[]{"1","10","5"}));
            randomtest.add(new Questions("1+10", "11", new String[]{"2","11","6"}));
            randomtest.add(new Questions("1+11", "12", new String[]{"12","3","7"}));

            Collections.shuffle(randomtest);

            for(int i = 0;i < 5; i++){

                test.add(randomtest.get(i));

            }
            
            
        }
        
    return test;
    }
    
}
