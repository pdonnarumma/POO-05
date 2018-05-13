package br.com.fatecpg.quizquestion;


public class Questions {
    
    private String question;
    private String aswer;
    private String[] alternatives;

    public Questions(String question, String aswer, String[] alternatives) {
        this.question = question;
        this.aswer = aswer;
        this.alternatives = alternatives;
    }
    

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAswer() {
        return aswer;
    }

    public void setAswer(String aswer) {
        this.aswer = aswer;
    }

    public String[] getAlternatives() {
        return alternatives;
    }

    public void setAlternatives(String[] alternatives) {
        this.alternatives = alternatives;
    }
}
