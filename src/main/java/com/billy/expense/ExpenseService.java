package com.billy.expense;

import com.billy.expense.dto.ExpenseInputDto;
import com.billy.expense.mapper.ExpenseMapper;
import com.billy.expense.model.Expense;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;

@Service
public class ExpenseService {

    private ExpenseRepository expenseRepository;

    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }

    @Transactional
    public ResponseEntity<Long> create(ExpenseInputDto expenseInputDto, UriComponentsBuilder uriBuilder) {
        Expense expense = expenseRepository.save(ExpenseMapper.toEntity(expenseInputDto));

        URI uri = uriBuilder.path("/expenses/{id}").buildAndExpand(expense.getId()).toUri();
        return ResponseEntity.created(uri).body(expense.getId());
    }
}
