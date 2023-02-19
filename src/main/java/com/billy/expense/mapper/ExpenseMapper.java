package com.billy.expense.mapper;

import com.billy.expense.dto.ExpenseInputDto;
import com.billy.expense.model.Expense;

public class ExpenseMapper {

    public static Expense toEntity(ExpenseInputDto expenseInputDto){
        return new Expense(expenseInputDto.description(), expenseInputDto.amount());
    }

}
