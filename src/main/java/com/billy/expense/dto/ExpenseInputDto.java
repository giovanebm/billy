package com.billy.expense.dto;
import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

@Schema(description = "Expenses details")
public record ExpenseInputDto (
        @Schema(description = "${expense.description}", example = "soda")
        @NotEmpty
        @Size(min = 1, max = 30)
        @Pattern(regexp = "^[\\p{Alnum}_/]+$")
        String description,
        @Schema(description = "${expense.amount}", example = "soda")
        @NotNull
        @Positive
        Double amount
){}
