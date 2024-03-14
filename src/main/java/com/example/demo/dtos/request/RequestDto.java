package com.example.demo.dtos.request;

import java.time.LocalDate;

import jakarta.validation.constraints.FutureOrPresent;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class RequestDto {
    @NotBlank(message = "Reason is mandatory")
    private String reason;
    @NotNull(message = "Init date is mandatory")
    @FutureOrPresent(message = "The start date must be equal to or after the current date")
    private LocalDate initDate;
    @NotNull(message = "End date is mandatory")
    @FutureOrPresent(message = "The end date must be equal to or after the current date")
    private LocalDate endDate;
    private String description;
}
