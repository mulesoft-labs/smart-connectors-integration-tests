package org.mule.daPackage;

public class ExecutableElement {

  public static ExecutableElement create() {
    return new ExecutableElement();
  }

  public String sayHi() {
    return "Hi";
  }

  public String sayHi(String name) {
    return "Hi " + name;
  }
  
}
