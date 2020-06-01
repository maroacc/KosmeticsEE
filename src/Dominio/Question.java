package Dominio;
import java.io.Serializable;


/*Preguntas que se harán a los usuarios sobre cada producto*/

public class Question implements Serializable{
    private static final long serialVersionUID = 1L;
    private int idQuestion; // ID que identifica la pregunta
    private String questionText; // Texto de la pregunta

    public Question (int idQuestion, String questionText) {
        this.idQuestion=idQuestion;
        this.questionText=questionText;
    }

    public int getIdQuestion() {
        return this.idQuestion;
    }

    public String getQuestionText() {
        return this.questionText;
    }

    @Override
    public int hashCode() {
        return idQuestion;
    }

    /* Son iguales si el id es el mismo */
    @Override
    public boolean equals(Object o) {
        if(o instanceof Question && idQuestion==((Question) o).getIdQuestion()) {
            return true;
        }else{
            return false;
        }
    }
}