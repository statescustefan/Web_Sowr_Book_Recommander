import com.hp.hpl.jena.query.*;
import com.hp.hpl.jena.rdf.model.Literal;
import com.hp.hpl.jena.rdf.model.Model;
import com.hp.hpl.jena.util.FileManager;

public class Main {
	
		public static void main (String[] args){
			sparql();
	}
		
		public static void sparql(){
		FileManager.get().addLocatorClassLoader(Main.class.getClassLoader());
		Model model = FileManager.get().loadModel("e:/stuff/web/sowr_social_book_recommender/src/data.rdf");
		String queryString = 
				"PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syndax-ns#>" +
				"PREFIX foaf: <http://xmlns.com/foaf/0.1/>" + 
				"SELECT * WHERE {" +
				" ?person foaf:name ?x ." + 
				"}";
		Query query = QueryFactory.create(queryString);
		QueryExecution qexec = QueryExecutionFactory.create(query,model);
		try{
			ResultSet results = qexec.execSelect();
			while (results.hasNext()){
				QuerySolution soln = results.nextSolution();
				Literal name = soln.getLiteral("x");
				System.out.println(name);
				
			}
		}finally {
			qexec.close();
		}
		}
}
