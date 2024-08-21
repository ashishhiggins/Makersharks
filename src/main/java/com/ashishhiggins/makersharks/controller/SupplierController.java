package com.ashishhiggins.makersharks.controller;

import com.ashishhiggins.makersharks.model.ManufacturingProcess;
import com.ashishhiggins.makersharks.model.NatureOfBusiness;
import com.ashishhiggins.makersharks.model.entity.Supplier;
import com.ashishhiggins.makersharks.service.SupplierService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/supplier")
@AllArgsConstructor
public class SupplierController {

    private SupplierService supplierService;

    @Operation(
            summary = "Query Supplier REST API",
            description = "REST API to query Supplier based on location, nature of business and manufacturing process"
    )
    @ApiResponse(
            responseCode = "200",
            description = "HTTP Status OK"
    )
    @PostMapping("/query")
    public ResponseEntity<Page<Supplier>> querySupplier(
            @RequestParam @NotBlank String location,
            @RequestParam @NotNull NatureOfBusiness natureOfBusiness,
            @RequestParam @NotNull ManufacturingProcess manufacturingProcess,
            @RequestParam(defaultValue = "0") @Min(0) int page,
            @RequestParam(defaultValue = "5") @Min(1) @Max(100) int size) {

        Page<Supplier> suppliers = supplierService.searchSupplier(location, natureOfBusiness, manufacturingProcess, page, size);


        return ResponseEntity.ok(suppliers);
    }

}

