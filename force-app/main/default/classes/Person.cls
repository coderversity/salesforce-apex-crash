public with sharing class Person {
  private string name;
  private Integer age;

  // constructor
  public Person(String name, Integer age) {
    this.name = name;
    this.age = age;
  }

  public void greet() {
    System.debug('Hello! My name is ' + name + '. I am ' + age + ' years old.');
  }

  public Integer incrementAge() {
    return age + 1;
  }
}
