package Dominio;

import java.util.HashMap;
import java.io.Serializable;
import java.util.Collection;

/*
* Encuesta
* Contiene preguntas sobre un producto + un vector de respuestas a esas preguntas (yes, no, idk)
* */

public class Survey implements Serializable{
    private static final long serialVersionUID = 1L;
    private HashMap<Question,int[]> survey;

    public Survey(){
        this.survey = new HashMap<Question,int[]>();
    }

    /* Rellena la pregunta + el vector de respuestas*/
    public void put(Question question ,int yes,int no,int yesNo) {
        int[] puntuation=new int[3];
        puntuation[0]=yes;
        puntuation[1]=no;
        puntuation[2]=yesNo;

        survey.put(question, puntuation);

    }

    /*Devuelve las preguntas de una encuesta*/
    public Collection<Question> getQuestions() {
		/*Set<String> questions = new HashSet<String>();
		Iterator it = survey.keySet().iterator();

		while(it.hasNext())
        {
            Set question = (Set) it.next();
            questions.add(question[config]);
        }

		return questions;*/

		/*Set<String> questions = new HashSet<String>();

		for(HashMap<String,String> it: survey.keySet()) {
			if (config==0)
				questions.add(it.keySet().toArray()[0]);
			elsif(config==1)
				return survey.keySet().getValue();
		}

		else
			System.out.print("Valor de configuración invalido.");

			*/
        return survey.keySet();
    }

    /*Devuelve la respuesta a una pregunta*/
    public int[] getQuestionRespuesta(Question question){
        return survey.get(question);

    }

    /*Devuelve */
    public int getResult(Question question,int j) {
        int[] puntuation=survey.get(question);
        int numParticipants=0;
        float results[]=new float[3];

        for(int i=0;i<puntuation.length;i++) {
            numParticipants+=puntuation[i];
        }

        for(int i=0;i<puntuation.length;i++) {
            results[i]= Math.round((((float)puntuation[i])/((float)numParticipants))*100);
            //System.out.println("\nPuntuacion: "+puntuation[i]+"\nParticipantes: "+numParticipants+"\nResultado: "+results[i]);
        }

        return (int) results[j];
    }
    @Override
    public String toString() {
        return survey.toString();
    }
}