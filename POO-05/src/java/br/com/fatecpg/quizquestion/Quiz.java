package br.com.fatecpg.quizquestion;


    
import java.util.ArrayList;

import java.util.Collections;
import java.util.List;



public class Quiz {
    private static Questions[] questionList = new Questions[]{
       
        new Questions("Qual a estrela mais próxima da Terra?", "Sol", new String[]{"Sol", "Sirius", "Alpha Centauri"}),
        new Questions("O maior planeta do Sistema Solar?", "Júpiter", new String[]{"Júpiter", "Saturno", "Netuno"}),
        new Questions("O ano da primeira chegada do homem à Lua?", "1969", new String[]{"1952", "1977", "1969"}),
        new Questions("Qual a posição,em relação ao Sol,da Terra no Sistema Solar?", "3", new String[]{"9", "3", "4"}),
        new Questions("Planeta conhecido pelo nome do deus da guerra romano?", "Marte", new String[]{"Urano", "Júpiter", "Marte"}),
        new Questions("Quantos satélites naturais Marte possui?", "2", new String[]{"2", "5", "10"}),
        new Questions("O planeta mais próximo do Sol?", "Mercúrio", new String[]{"Terra", "Mercúrio", "Urano"}),
        new Questions("Em que ano Plutão deixou de ser considerado um planeta?", "2006", new String[]{"2006", "2009", "1995"}),
        new Questions("Quantos planetas o Sistema Solar possui?", "8", new String[]{"7", "10", "8"}),
        new Questions("Planeta conhecido pelo nome do deus romano dos mares?", "Netuno", new String[]{"Marte", "Netuno", "Vênus"}),
        new Questions("Planeta dos anéis?", "Saturno", new String[]{"Saturno", "Gandalf(Porque,não sei..)", "Júpiter"}),
        new Questions("Data do lançamento do primeiro satélite espacial?", "1957", new String[]{"1957", "1960", "2200 a.c(no Acre)"}),
        new Questions("Estrela do Pólo Norte?", "Polaris", new String[]{"Vega", "Canopus", "Polaris"}),
        new Questions("Corpos massivos,que são capazes de sugar tudo,inclusive a luz?", "Buracos Negros", new String[]{"Estrela da Morte", "Sua mãe", "Buracos Negros"}),
        new Questions("Cometa conhecido pela sua passagem na Terra em 1986?", "Halley", new String[]{"Halley", "Halle/Bope", "Ison"}),
 
    };
    
        
    private static ArrayList<Questions> test; 

    
    public static ArrayList<Questions> getTest() {
        
        test = new ArrayList<>(10);
       
        
        List <Integer>num = new ArrayList<Integer>(15);
        for (int i=0; i<15; i++){
            num.add(i);
            
        }
        
        Collections.shuffle(num);
        
        
        for (int i=0; i<10; i++){
           
            test.add(questionList[num.get(i)]);
        }      
               
        
        
        return Quiz.test;
    }

}
    

