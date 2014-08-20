package com.neverwinterdp.jstatsd.test;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by smorin on 7/25/14.
 */
public class Tester {
    @Test
    public void testNameUnitTest() throws Exception {
        Assert.assertEquals(1,com.neverwinterdp.jstatsd.Test.returnone());
    }

    @Test
    public void testFailUnitTest() { Assert.assertEquals(1,2);}
}
