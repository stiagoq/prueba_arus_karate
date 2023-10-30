package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate getEmployee(){
        return Karate.run("get_employee").relativeTo(getClass());
    }

    @Karate.Test
    Karate getEmployees(){
        return Karate.run("get_employees").relativeTo(getClass());
    }

    @Karate.Test
    Karate postEmployee(){
        return Karate.run("post").relativeTo(getClass());
    }

    @Karate.Test
    Karate putEmployee(){
        return Karate.run("put").relativeTo(getClass());
    }

    @Karate.Test
    Karate deleteEmployee(){
        return Karate.run("delete").relativeTo(getClass());
    }

}
