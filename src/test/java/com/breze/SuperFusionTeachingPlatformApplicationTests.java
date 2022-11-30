package com.breze;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

// 开启Web测试
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
// 开启MockMvc虚拟调用
@AutoConfigureMockMvc
class SuperFusionTeachingPlatformApplicationTests {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void contextLoads() throws Exception {
//        MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/test");
//        ResultActions actions = mockMvc.perform(builder);
//
//        // 设定期望的状态码与请求的返回值进行比较
//        StatusResultMatchers status = MockMvcResultMatchers.status();
//        actions.andExpect(status.isOk());
    }

}
