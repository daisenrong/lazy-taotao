package config;

/**
 * Coding......
 * Created by D.SR on 2017/3/6.
 */
public class Config {
    //要配置的值
    public static int value = 0;

    //这里不能写成静态的
    public void setValue(int i) {
        value = i;
    }
}
