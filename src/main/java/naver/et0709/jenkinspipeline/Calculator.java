package naver.et0709.jenkinspipeline;

import org.springframework.stereotype.Service;

@Service
public class Calculator {
    public int sum(int a, int b){
        System.out.println("Hello Jenkins sum");
        return a + b;
    }
}
