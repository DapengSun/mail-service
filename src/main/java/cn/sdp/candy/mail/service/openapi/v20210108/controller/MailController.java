package cn.sdp.candy.mail.service.openapi.v20210108.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: sundapeng.sdp
 * @create: 2022-01-08 22:40
 * @description: 邮件服务
 **/
@RestController
@RequestMapping(value = "mail")
public class MailController {
    @RequestMapping(value = "/demo")
    public String demo() {
        return "Send mail success~";
    }
}
