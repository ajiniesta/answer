import com.iniesta.answer.core.*

class BootStrap {

    def init = { servletContext ->
    	println "Bootstraping....."
    	def ccdh = new Certification(name: 'CCDH', description: 'Certification for Cloudera Developer for Hadoop').save()

    	def yes = new Answer(name: 'Yes', correct: true).save()
    	def no = new Answer(name: 'No', correct: false).save()

        def question = new Question(certification: ccdh, question: "Is this a sample question?", answers: [yes, no]).save()
    	//new Question(certification: ccdh, question: 'Is this a sample question?', answers: [yes, no]).save()
    	println "End of the bootstrap"
    }
    def destroy = {
    }
}
