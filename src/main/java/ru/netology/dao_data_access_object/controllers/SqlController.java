package ru.netology.dao_data_access_object.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dao_data_access_object.services.SqlService;

@RestController()
@RequestMapping("/products")
public class SqlController {

    private final SqlService sqlService;

    public SqlController(SqlService sqlService) {
        this.sqlService = sqlService;
    }

    @GetMapping(value = "/fetch-product")
    public String getProduect(@RequestParam("name") String name) {
        return sqlService.getProductName(name);
    }
}
