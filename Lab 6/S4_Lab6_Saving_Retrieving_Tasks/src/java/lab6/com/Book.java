package lab6.com;

import java.io.Serializable;

public class Book implements Serializable {
    private String stuno;
    private String name;
    private String program;

    public Book() {}

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        // Regular Expression: Starts with uppercase letters followed by numbers
        if (stuno.matches("^[A-Z]+\\d+$")) {
            this.stuno = stuno;
        } else {
            throw new IllegalArgumentException("Student No must start with Capital "
                    + "Letters followed by numbers (e.g., UK123)");
        }
    }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getProgram() { return program; }
    public void setProgram(String program) { this.program = program; }
}