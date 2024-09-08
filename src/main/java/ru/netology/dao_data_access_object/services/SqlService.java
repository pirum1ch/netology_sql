package ru.netology.dao_data_access_object.services;

import org.springframework.stereotype.Service;
import ru.netology.dao_data_access_object.repositories.SqlRepo;

@Service
public class SqlService {

    private final SqlRepo sqlRepo;

    public SqlService(SqlRepo sqlRepo) {
        this.sqlRepo = sqlRepo;
    }

    public String getProductName(String name) {
        return sqlRepo.getProductName(name);
    }

}
