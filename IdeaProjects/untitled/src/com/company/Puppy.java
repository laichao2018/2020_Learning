package com.company;
import java.io.*;

public class Puppy {
    public Puppy() {
    }

    public Puppy(String name) {
        System.out.println("dog's name is: " + name);
    }

    public static void Main(String args[]) {
        Puppy myPuppy = new Puppy("Tommy");
    }
}
