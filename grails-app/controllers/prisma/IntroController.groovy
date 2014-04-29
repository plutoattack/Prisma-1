package prisma

import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.commons.GrailsApplication

@Secured(['permitAll'])
class IntroController {

    def index() {
        redirect(action: "intro")
    }

    def intro() {
        params.order = "asc"
        params.sort = "label"
        ArrayList<String> firstChar = new ArrayList<>()
        Organization.list(params).each {
            if (!firstChar.contains(it.label.substring(0,1))) {
                firstChar.add(it.label.substring(0,1))
            }
        }
         [firstChar: firstChar, organizationInstanceList: Organization.list(params), organizationInstanceTotal: Organization.count()]

    }
    def show(){
        def begChar = params.id
        ArrayList<String> sortedOrgazizations = new ArrayList<>()
        Organization.list(params).each{
            if(it.label.startsWith(begChar)){
                sortedOrgazizations.add(it.label)
            }
        }

        [sortedOrgazizations: sortedOrgazizations]
    }
   def addToList(){
       //ToDo Create domain ,load from domain-store to domain
       def chosenOrganization = Organization.findByLabel(params.chosenOrgan)
       def setting=Setting.get(1)

       setting.addToOrgs(chosenOrganization)
       setting.save(flush: true)
       [organizationsList: Setting.get(1).orgs]
   }
    def removeFromList(){
        def chosenOrganizationToRemove = Organization.findByLabel(params.chosenOrganToDelete)
        def setting=Setting.get(1)
        setting.removeFromOrgs(chosenOrganizationToRemove)

        //ToDo remove the chosen organizations from the domain
    }
    def upload(){
        def f = request.getFile('myFile')
        if (f.empty) {
            flash.message = 'file cannot be empty'
            render(view: 'change_img')
            return
        }
        f.transferTo(new File('web-app/images/slider_image_dim_2.jpg'))
        response.sendError(200, 'Done')
    }
    def change_img(){

    }
}