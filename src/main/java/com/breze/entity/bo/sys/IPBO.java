package com.breze.entity.bo.sys;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class IPBO {

    private String ip;

    private String port;

    private String address;
}
