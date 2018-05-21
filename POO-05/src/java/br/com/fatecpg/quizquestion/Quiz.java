package br.com.fatecpg.quizquestion;

import java.util.ArrayList;

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
    
    public static ArrayList<Quiz> topTenQuizzes = new ArrayList<>();
    
    private ArrayList<Questions> test;
    private double grade;
    private Users user;
    
    public Quiz(Users user) {
        this.user = user;
        
        test = new ArrayList<>(10);
        for (int i=0; i<10; i++){
            int randomIndex;
            do {
                randomIndex = (int)(Math.random() * questionList.length);
            }while (test.contains(questionList[randomIndex]));
            test.add(questionList[randomIndex]);
        }
    }

    public Users getUser(){
        return this.user;
    }
    public double getGrade() {
        return grade;
    }
    
    public void finishTest(double grade){
        this.grade = grade;       
                       
        int size = topTenQuizzes.size();
        if (size==0){
            topTenQuizzes.add(this);
        } 
        else {
            int i = size;
            
            while (i>0 && this.grade>topTenQuizzes.get(i-1).grade){
                i--;
            }
            
            if (i<10){
                topTenQuizzes.add(i, this);
            }
            
            if (topTenQuizzes.size()>10){
                topTenQuizzes.remove(10);
            }
        }
    }

    public ArrayList<Questions> getTest() 
    { 
        return this.test;
    }

}
