package com.ashishhiggins.makersharks.service;


import com.ashishhiggins.makersharks.model.ManufacturingProcess;
import com.ashishhiggins.makersharks.model.NatureOfBusiness;
import com.ashishhiggins.makersharks.model.entity.Supplier;
import com.ashishhiggins.makersharks.repository.SupplierRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service@AllArgsConstructor
public class SupplierService {

    private SupplierRepository supplierRepository;

    public Page<Supplier> searchSupplier(
            String location,
            NatureOfBusiness natureOfBusiness,
            ManufacturingProcess manufacturingProcess,
            int page,
            int size) {

        Pageable pageable = PageRequest.of(page, size);

        return supplierRepository.findByLocationAndNatureOfBusinessAndManufacturingProcessesContains(
                location,
                natureOfBusiness,
                manufacturingProcess,
                pageable);
    }
}
