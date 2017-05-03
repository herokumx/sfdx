public class ContactsListController {

    private String sortOrder = 'LastName';
    private Contact contact;
    
    //Génération de la liste
    public List<Contact> getContacts() {
        
        List<Contact> results = Database.query(
            'SELECT Id, FirstName, LastName, Title, Email, Birthdate, Fidelite__c ' +
            'FROM Contact ' +
            'ORDER BY ' + sortOrder + ' ASC '
        );
        return results;
    }
    public Contact getContact() {
        if(contact == null) contact = new contact();
        return contact;
    }
    //Ajout du contact dans la BDD
    public void save(){
        insert contact;
    }
        
    public void sortByLastName() {
        this.sortOrder = 'LastName';
    }
        
    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }
}