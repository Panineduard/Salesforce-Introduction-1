public with sharing class DemoControllerForVisualforce {
    public String name { get; set; }
    public String model{ get; set; }
    public String brand { get; set; }

    public void save () {
        if (String.isNotBlank(name) && String.isNotBlank(model) && String.isNotBlank(brand)) {
            Car__c car = new Car__c();
            car.Name = name;
            insert car;
        }
    }
}